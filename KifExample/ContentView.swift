//
//  ContentView.swift
//  KifExample
//
//  Created by Bliss on 2/12/22.
//

import SwiftUI

struct ContentView: View {

    @State var text = ""
    @State var showing = false

    var body: some View {
        TextField("Hello", text: $text)
            .accessibilityIdentifier("field")
        Text("Hello, world!")
            .padding()
        Button {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                withAnimation {
                    self.showing.toggle()
                }
            }
        } label: {
            Text("Close")
        }
        .accessibilityIdentifier("button")
        Text("Was hidden")
            .opacity(showing ? 1.0 : 0.0)
            .accessibilityIdentifier("hidden")
    }
}
