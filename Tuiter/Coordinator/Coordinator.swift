//
//  Coordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

public protocol Coordinator: AnyObject {
    var nextCoordinator: Coordinator? { get }
    var currentViewController: UIViewController? { get set }
    func start()
    func start(animated: Bool)
}

public extension Coordinator {
    func start() {
        start(animated: true)
    }
}
