//
//  ContentView.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 5/10/25.
//

import SwiftUI
import WebKit

struct TranslationView: View {
	@StateObject var inputConfig = TextConfig(lang: "auto", text: "")
	@StateObject var outputConfig = TextConfig(lang: Lang.en.rawValue, text: "")
	
	@State var isTrue = true
	
	@State var isTranslateLoading: Bool = false
	
	@State private var debouncer = Debounce()
	
	func setTranslion(translation: String) {
		outputConfig.text = translation
		isTranslateLoading = false
	}
	
	func handleTranslateText () {
		if inputConfig.text != "" {
			isTranslateLoading = true
			request(
				inputConfig.text.trimmingCharacters(in: .whitespacesAndNewlines),
				from: inputConfig.lang,
				to: outputConfig.lang,
				callback: setTranslion
			)
		} else {
			outputConfig.text = ""
		}
	}
	
    var body: some View {
		VStack {
			HStack {
				VStack(alignment: .leading) {
					LanguageSelect(selectedLang: $inputConfig.lang, isEnabledAuto: true)
					StyledTextEditor(text: $inputConfig.text)
						.onChange(of: inputConfig.text) {
							debouncer.debounce(action: handleTranslateText)
						}
				}
				VStack(alignment: .leading) {
					LanguageSelect(selectedLang: $outputConfig.lang)
					StyledTextEditor(text: .constant(!isTranslateLoading ? outputConfig.text : "..."))
				}
			}
		}
		.padding(8)
    }
}

#Preview {
	TranslationView()
}
