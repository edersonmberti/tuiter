//
//  LobbyInteractor.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import Foundation

protocol LobbyBusinessLogic {
    func verifyAuthentication()
}

final class LobbyInteractor {
    private let presenter: LobbyPresentationLogic
    private let authWorker: AuthWorkerProtocol
    
    init(presenter: LobbyPresentationLogic, authWorker: AuthWorkerProtocol) {
        self.presenter = presenter
        self.authWorker = authWorker
    }
}

extension LobbyInteractor: LobbyBusinessLogic {
    func verifyAuthentication() {
        authWorker.isAuthenticated() ?
            presenter.navigationToMain() :
            presenter.navigationToAuth()
    }
}
