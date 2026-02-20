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
			.cornerRadius(12)
			.font(.system(size: 18))
	}
}

#Preview {
	@Previewable @State var previewText = "Hello, Preview!"
	return StyledTextEditor(text: $previewText)
}
