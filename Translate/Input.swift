//
//  Input.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 10/10/25.
//

import SwiftUI

struct StyledTextEditor: View {
	@Binding var text: String
	
	var body: some View {
		TextEditor(text: $text)
			.frame(height: 80)
			.background(.windowBackground)
			.border(.ultraThickMaterial, width: 2)
			.cornerRadius(6)
			.font(.system(size: 18))
	}
}

#Preview {
	@Previewable @State var previewText = "Hello, Preview!"
	return StyledTextEditor(text: $previewText)
}
