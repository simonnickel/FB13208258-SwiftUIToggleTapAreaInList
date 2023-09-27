//
//  ContentView.swift
//  SwiftUIToggleTapAreaInList
//
//  Created by Simon Nickel on 27.09.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var isOn: Bool = true
	@State private var selectedStyle: String = "A"
	
    var body: some View {
		
        List {
			
			Toggle(isOn: $isOn, label: {
				VStack(alignment: .leading) {
					Text("Label")
					Text("-> Label is not tapable")
				}
			})
			
			Picker(selection: $selectedStyle) {
				ForEach(["A", "B", "C"], id: \.self) { option in
					Text(option)
						.tag(option)
				}
			} label: {
				VStack(alignment: .leading) {
					Text("Picker")
					Text("-> Label is tapable")
				}
			}
			
        }

    }
}

#Preview {
    ContentView()
}
