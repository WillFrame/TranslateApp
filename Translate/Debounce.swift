//
//  Debounce.swift
//  Translate
//
//  Created by Matvey Mozhevikin on 4/2/26.
//

import SwiftUI

class Debounce {
	private var task: Task<Void, Never>?
	
	func debounce(delay: Duration = .seconds(0.5), action: @escaping () -> Void) {
		task?.cancel()
		
		task = Task {
			do {
				try await Task.sleep(for: delay)
				
				guard !Task.isCancelled else { return }
				
				action()
			} catch {}
		}
	}
	
	func cancel() {
		task?.cancel()
	}
}
