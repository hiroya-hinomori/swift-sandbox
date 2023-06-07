//
//  HogeHostingController.swift
//  Sandbox_UIKit
//
//  Created by 日野森 寛也（Hiroya Hinomori） on 2023/06/05.
//

import Foundation
import SwiftUI
import Combine

class HogeHostingController: UIHostingController<SwiftUIView> {
    private let model = HogeModel()

    var tappedPublihser: AnyPublisher<Void, Never> {
        model.$tappedSubject.eraseToAnyPublisher()
    }
    
    init(title: String) {
        super.init(
            rootView: .init(
                text: title,
                model: model
            )
        )
    }
    
    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
