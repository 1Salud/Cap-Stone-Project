//
//  CenteredButton.swift
//  ShoppingList
//
//  

import SwiftUI

// a simple view that contains a button that is horizontally centered onscreen
// we have a few of these on-screen in views of items some add/modify screens

struct SLCenteredButton: View {
	let title: String
	let action: () -> Void
	
	var body: some View {
		HStack {
			Spacer()
			Button(title) {
				self.action()
			}
			Spacer()
		}
	}
}

