//
//  TextConfig.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 4/2/26.
//

import SwiftUI
import Combine

class TextConfig: ObservableObject {
	@Published var lang: String = ""
	@Published var text: String = ""
	
	init(lang: String = "", text: String = "") {
		self.lang = lang
		self.text = text
	}
}
