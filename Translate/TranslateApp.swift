//
//  TranslateApp.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 5/10/25.
//

import SwiftUI

@main
struct TranslateApp: App {
    var body: some Scene {
		MenuBarExtra("Tranlsation App", systemImage: "hammer") {
			TranslationView()
				.frame(width: 400, height: 130)
		}
		.menuBarExtraStyle(.window)
	}
}

//#Preview {
//	TranslateApp()
//}
