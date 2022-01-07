//
//  AuthCoordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

protocol AuthNavigationDelegate: AnyObject {
    func navigateToSomeware()
}

final class AuthCoordinator: PushedCoordinator {
    var presentingViewController: UINavigationController
    var nextCoordinator: Coordinator?
    var currentViewController: UIViewController?
    
    init(presentingViewController: UINavigationController) {
        self.presentingViewController = presentingViewController
    }
    
    func makeViewController() -> UIViewController {
        return AuthViewController()
    }
    
    func toUpdateIsNavigationBarHidden() -> Bool? {
        false
    }
}

extension AuthCoordinator: AuthNavigationDelegate {
    func navigateToSomeware() {}
}
