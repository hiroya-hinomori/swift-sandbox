//
//  HogeModel.swift
//  Sandbox_UIKit
//
//  Created by 日野森 寛也（Hiroya Hinomori） on 2023/06/05.
//

import Foundation
import Combine

class HogeModel: ObservableObject {
    let tappedSubject: PassthroughSubject<Void, Never>
    
    init(tappedSubject: PassthroughSubject<Void, Never>) {
        self.tappedSubject = tappedSubject
    }
}

