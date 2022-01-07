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
        setupNavigationBar()
    }
    
    override func loadView() {
        view = authView
    }
    
    private func setupNavigationBar() {
        let image = UIImage(named: "TwitterIcon")?.withRenderingMode(.alwaysTemplate)
        let titleImageView = UIImageView(image: image)
        titleImageView.tintColor = UIColor(named: "Primary")!
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.hidesBackButton = true
        navigationItem.titleView = titleImageView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LobbyViewController: AuthViewToViewControllerDelegate {}
