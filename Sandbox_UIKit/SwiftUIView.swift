//
//  SwiftUIView.swift
//  Sandbox_UIKit
//
//  Created by 日野森 寛也（Hiroya Hinomori） on 2023/06/05.
//

import SwiftUI

struct SwiftUIView: View {
    let text: String
    @ObservedObject var model: HogeModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text(text)
            Button("Say") {
                model.tappedSubject.send()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Hello", model: .init(tappedSubject: .init()))
    }
}
