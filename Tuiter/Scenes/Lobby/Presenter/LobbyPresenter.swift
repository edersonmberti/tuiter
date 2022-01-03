//
//  LobbyPresenter.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import Foundation

protocol LobbyPresentationLogic {
    var viewController: LobbyDisplayLogic? { get set }
    func navigationToAuth()
    func navigationToMain()
}

final class LobbyPresenter {
    weak var viewController: LobbyDisplayLogic?
}

extension LobbyPresenter: LobbyPresentationLogic {
    func navigationToAuth() {
        viewController?.navigateToAuth()
    }
    
    func navigationToMain() {
        viewController?.navigateToMain()
    }
}
