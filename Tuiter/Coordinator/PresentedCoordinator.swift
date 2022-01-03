//
//  PresentedCoordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

public protocol PresentedCoordinator: ShowedCoordinator {
    var presentingViewController: UIViewController { get }
}

public extension PresentedCoordinator {
    func show(viewController: UIViewController, animated: Bool) {
        currentViewController = viewController
        presentingViewController.present(viewController, animated: animated)
    }
}
