//
//  ShowedCoordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

public protocol ShowedCoordinator: Coordinator {
    func makeViewController() -> UIViewController
    func toUpdateIsNavigationBarHidden() -> Bool?
    func updateStatusBarVisibility()
    func show(viewController: UIViewController, animated: Bool)
}

public extension ShowedCoordinator {
    func start(animated: Bool = true) {
        let viewController = makeViewController()
        show(viewController: viewController, animated: animated)
        updateStatusBarVisibility()
    }

    func toUpdateIsNavigationBarHidden() -> Bool? {
        return nil
    }

    func updateStatusBarVisibility() {}
}
