//
//  ViewController.swift
//  Sandbox_UIKit
//
//  Created by 日野森 寛也（Hiroya Hinomori） on 2023/06/05.
//

import UIKit
import SwiftUI
import Combine

class ViewController: UIViewController {
    
    private var cancellables: Set<AnyCancellable> = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
        let swiftUIView = HogeHostingController(title: "Hello World!")
        addChild(swiftUIView)
        view.addSubview(swiftUIView.view)
        swiftUIView.didMove(toParent: self)
        swiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            swiftUIView.view.topAnchor.constraint(equalTo: view.topAnchor),
            swiftUIView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            swiftUIView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftUIView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        swiftUIView.tappedButtonPublisher
            .sink { [weak self] in
                let alert = UIAlertController(title: "Hello", message: nil, preferredStyle: .alert)
                alert.addAction(.init(title: "OK", style: .default))
                self?.present(alert, animated: true)
            }
            .store(in: &cancellables)
    }
}
