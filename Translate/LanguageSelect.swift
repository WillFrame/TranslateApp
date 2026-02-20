//
//  LanguageSelect.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 11/10/25.
//

import Foundation
import SwiftUI

// auto - автоматически

struct LanguageSelect: View {
	@Binding var selectedLang: String
	var isEnabledAuto: Bool = false
	var preparedItems: [String] {
		var preparedArray: [String] = Lang.allCases.sorted { l1, l2 in
			guard (l1.rawValue != selectedLang) else {return true}
			guard (l2.rawValue != selectedLang) else {return false}
			return getLangOrder(lang: l1) > getLangOrder(lang: l2)
		}.map({ $0.rawValue})
		
		if (isEnabledAuto) {
			preparedArray.insert("auto", at: 0)
		}
		
		return preparedArray
	}
	
	var body: some View {
		HStack(spacing: 0) {
			Menu(selectedLang) {
				ForEach(preparedItems, id: \.self) { item in
					Button(action: { selectedLang = item }) {
						Text(item)
					}
				}
			}
			.clipShape(.rect(uniformLeadingCorners: .fixed(1), uniformTrailingCorners: .fixed(8)))
			.clipShape(Rectangle())
		}
		.padding(0)
	}
}

#Preview {
	@Previewable @State var selectedLang: String = Lang.ru.rawValue
	return LanguageSelect(selectedLang: $selectedLang, isEnabledAuto: true)
}
