//
//  SLSliderControl.swift
//  ShoppingList
//

import SwiftUI

// a simple view i use to adjust a double in 0...1
// you'll see this when adding or modifying a Location so
// that i can adjust RGBA values of the color

struct SLSliderControl: View {
	var title: String
	@Binding var amount: Double
	var body: some View {
		HStack {
			Spacer()
			HStack {
				Text(title)
				Text(String(format: "%.2f", amount))
					.frame(width:40)
			}
			Slider(value: $amount, in: 0 ... 1)
				.frame(width: 200)
		}
	}
}
