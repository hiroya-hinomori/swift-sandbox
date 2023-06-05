//
//  ContentView.swift
//  Sandbox
//
//  Created by 日野森 寛也（Hiroya Hinomori） on 2023/06/02.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding()
            Button("Button") {
                isPresented = true
            }
            Text(.now, style: .time)
        }
        .padding()
        .alert(isPresented: $isPresented) {
            Alert(title: Text("Alert"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
