//
//  Request.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 16/1/26.
//

import WebKit

func parseTranslation(from jsonString: String) -> String? {
	guard let data = jsonString.data(using: .utf8) else { return nil }
	
	do {
		guard let jsonArray = try JSONSerialization.jsonObject(with: data) as? [Any],
			  let firstElement = jsonArray.first as? [Any],
			  firstElement.count > 2,
			  let translationString = firstElement[2] as? String,
			  let translationData = translationString.data(using: .utf8),
			  let translationArray = try JSONSerialization.jsonObject(with: translationData) as? [Any],
			  translationArray.count > 1,
			  let secondBlock = translationArray[1] as? [Any],
			  let firstOfSecond = secondBlock.first as? [Any],
			  let innerArray = firstOfSecond.first as? [Any],
			  innerArray.count > 5,
			  let translations = innerArray[5] as? [Any],
			  let translationBlock = translations.first as? [Any],
			  let translation = translationBlock.first as? String else {
			return nil
		}
		
		return translation
		
	} catch {
		print("Ошибка парсинга: \(error)")
		return nil
	}
}

func request(_ input: String, from: String = "auto", to lang: String, callback: @escaping (String) -> Void, ) {
	let preparedInput = input.replacingOccurrences(of: "\n", with: " ").replacingOccurrences(of: ".", with: " ");
	let body = #"[[["MkEWBc","[[\"\#(preparedInput)\",\"\#(from)\",\"\#(lang)\",1],[]]",null,"generic"]]]"#
	let parameters = "f.req=\(body.addingPercentEncoding(withAllowedCharacters: .alphanumerics)!)"
	let postData =  parameters.data(using: .utf8)

	var request = URLRequest(url: URL(string: "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute?rpcids=MkEWBc&source-path=%2F&hl=en&soc-app=1&soc-platform=1&soc-device=1")!,timeoutInterval: Double.infinity)
	request.addValue("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36", forHTTPHeaderField: "user-agent")
	request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
	request.addValue("AEC=AaJma5uAqJh9haMyeb7QVwP78qOMVnlPfwz5xB6lF2hVO5k7l7MBIfmSUQ; NID=525=N_825oeXprzdctT8Sk9fef6yQJAMM9JOcQ78hnKNzne2Wg5osGnI-UzH4Mjx7sXhE-RqEciL2bf3OoN0xvCz61hFlbAv9G7D3LYaM7lagnx8sCmYUXJwVq2cm0zrd77bMvQyyOphNrdBGTf5P6tNKH7irnFFZ0D9hLxdXMcwBEM3P2mbA3RXqPl151QCnCBwtQ651HwDhZnsZvxs9AcoY19lmSK2WvXb8KWHNSU_-UBOq2VdAndSLTTIctGA0vG5EBwds4VK8Y-TOkkakcVzO8HEcjRfyUipAZuR3yw", forHTTPHeaderField: "Cookie")
	
	request.httpMethod = "POST"
	request.httpBody = postData

	let task = URLSession.shared.dataTask(with: request) { data, response, error in
		guard let data = data else {return}
		var string = String(data: data, encoding: .utf8)!
		
		string.removeFirst(6)
		
		let output = parseTranslation(from: string) ?? ""
		
		print(output)
		
		callback(output)
	}

	task.resume()
}
