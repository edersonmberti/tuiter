//
//  LobbyCoordinator.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

protocol LobbyNavigationDelegate: AnyObject {
    func navigateToAuth()
    func navigateToMain()
}

final class LobbyCoordinator: RootCoordinator {
    unowned let window: UIWindow
    var nextCoordinator: Coordinator?
    var currentViewController: UIViewController?

    init(window: UIWindow) {
        self.window = window
    }

    func start(animated: Bool = true) {
        var presenter: LobbyPresentationLogic = LobbyPresenter()
        let authWorker: AuthWorkerProtocol = AuthWorker()
        let interactor: LobbyBusinessLogic = LobbyInteractor(presenter: presenter, authWorker: authWorker)
        let viewController: LobbyViewController = LobbyViewController(interactor: interactor)
        presenter.viewController = viewController
        viewController.navigationDelegate = self
        currentViewController = UINavigationController(rootViewController: viewController)
        viewController.navigationController?.setNavigationBarHidden(true, animated: animated)
        window.rootViewController = currentViewController
    }
}

extension LobbyCoordinator: LobbyNavigationDelegate {
    func navigateToAuth() {
        guard let currentViewController = currentViewController as? UINavigationController else { return }
        let coordinator = MainCoordinator(presentingViewController: currentViewController)
        nextCoordinator = coordinator
        nextCoordinator?.start()
    }
    
    func navigateToMain() {
        guard let currentViewController = currentViewController as? UINavigationController else { return }
        let coordinator = MainCoordinator(presentingViewController: currentViewController)
        nextCoordinator = coordinator
        nextCoordinator?.start()
    }
}
