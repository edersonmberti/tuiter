//
//  AuthViewController.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

protocol AuthViewToViewControllerDelegate: AnyObject {}

final class AuthViewController: UIViewController {
    
    weak var navigationDelegate: AuthNavigationDelegate?
    
    lazy var authView: AuthView = {
        var view: AuthView = AuthView()
        return view
    }()
    
    init() {
      super.init(nibName: nil, bundle: .main)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = authView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LobbyViewController: AuthViewToViewControllerDelegate {}

