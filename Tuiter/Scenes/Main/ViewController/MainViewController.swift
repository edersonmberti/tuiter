//
//  MainViewController.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

protocol MainViewToViewControllerDelegate: AnyObject {}

final class MainViewController: UIViewController {
    
    weak var navigationDelegate: MainNavigationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
    
    init() {
        super.init(nibName: nil, bundle: .main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainViewController: MainViewToViewControllerDelegate {}
