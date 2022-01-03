//
//  PushedCoordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

public protocol PushedCoordinator: ShowedCoordinator {
    var presentingViewController: UINavigationController { get }
}

public extension PushedCoordinator {
    func show(viewController: UIViewController, animated: Bool) {
        currentViewController = viewController
        presentingViewController.pushViewController(viewController, animated: animated)
    }

    func updateStatusBarVisibility() {
        if let updatedVisibility = toUpdateIsNavigationBarHidden() {
            presentingViewController.isNavigationBarHidden = updatedVisibility
        }
    }
}
