//
//  SLSimpleCountHeaderView.swift
//  ShoppingList
//
//

import SwiftUI

struct SLSimpleHeaderView: View {
	var label: String
	var body: some View {
		VStack(spacing: 2) {
			HStack {
				Text(label)
					.font(.caption)
					.italic()
					.foregroundColor(.secondary)
					.padding([.leading], 20)
				Spacer()
			}
			Rectangle()
				.frame(minWidth: 0, maxWidth: .infinity, minHeight: 1, idealHeight: 1, maxHeight: 1)
		}
	}
}

struct SLSimpleHeaderView_Previews: PreviewProvider {
    static var previews: some View {
			SLSimpleHeaderView(label: "Items Listed: 5")
    }
}
