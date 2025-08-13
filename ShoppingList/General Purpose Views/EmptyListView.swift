//
//  EmptyListView.swift
//  ShoppingList
//
// 

import SwiftUI

// this consolidates the code for what to show when a list is empty
struct EmptyListView: View {
	var listName: String
	var body: some View {
		VStack {
			Group {
				Text("There are no items")
					.padding([.top], 200)
				Text("on your \(listName) List.")
			}
			.font(.title)
			.foregroundColor(.secondary)
			Spacer()
		}
	}
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
			EmptyListView(listName: "ListName")
    }
}
