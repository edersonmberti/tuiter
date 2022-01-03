//
//  LobbyViewController.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

protocol LobbyDisplayLogic: AnyObject {
    func navigateToAuth()
    func navigateToMain()
}

protocol LobbyViewToViewControllerDelegate: AnyObject {}

final class LobbyViewController: UIViewController {
    
    private let interactor: LobbyBusinessLogic
    
    weak var navigationDelegate: LobbyNavigationDelegate?
    
    lazy var lobbyView: LobbyView = {
        var view: LobbyView = LobbyView()
        return view
    }()
    
    init(interactor: LobbyBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: .main)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyAuthentication()
    }
    
    override func loadView() {
        view = lobbyView
    }
    
    private func verifyAuthentication() {
        interactor.verifyAuthentication()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: LobbyDisplayLogic

extension LobbyViewController: LobbyDisplayLogic {
    func navigateToMain() {
        navigationDelegate?.navigateToMain()
    }
    
    func navigateToAuth() {
        navigationDelegate?.navigateToAuth()
    }
}

// MARK: LobbyViewToViewControllerDelegate

extension LobbyViewController: LobbyViewToViewControllerDelegate {}
