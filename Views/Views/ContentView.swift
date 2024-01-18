//
//  ContentView.swift
//  Views
//
//  Created by Consultant on 1/16/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}
struct ContentView: View {

    var body: some View {
        VStack(spacing: 10) {
         Text("Hellow World!")
            modifier(Title())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
