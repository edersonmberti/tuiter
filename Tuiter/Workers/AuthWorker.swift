//
//  AuthWorker.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 03/01/22.
//

import Firebase

protocol AuthWorkerProtocol {
    func isAuthenticated() -> Bool
}

final class AuthWorker: AuthWorkerProtocol {
    
    func isAuthenticated() -> Bool {
        return Auth.auth().currentUser != nil
    }
}
