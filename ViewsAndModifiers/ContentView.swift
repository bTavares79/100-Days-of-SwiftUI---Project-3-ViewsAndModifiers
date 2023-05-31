//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Brian Tavares on 5/30/23.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello Wolrd")
            .titleStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
