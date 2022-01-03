//
//  MainCoordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

protocol MainNavigationDelegate: AnyObject {
    func navigateToSomeware()
}

final class MainCoordinator: PushedCoordinator {
    var presentingViewController: UINavigationController
    var nextCoordinator: Coordinator?
    var currentViewController: UIViewController?
    
    init(presentingViewController: UINavigationController) {
        self.presentingViewController = presentingViewController
    }
    
    func makeViewController() -> UIViewController {
        return MainViewController()
    }
}

extension MainCoordinator: MainNavigationDelegate {
    func navigateToSomeware() {}
}
