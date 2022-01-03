//
//  AppDelegate.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
        return UIWindow()
    }()
    
    lazy var lobbyCoordinator: LobbyCoordinator = {
        guard let window = self.window else { fatalError("Failed to create window") }
        let lobbyCoordinator = LobbyCoordinator(window: window)
        return lobbyCoordinator
    }()
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        lobbyCoordinator.start()
        window?.makeKeyAndVisible()
        return true
    }
}
