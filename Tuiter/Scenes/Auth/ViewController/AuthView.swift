//
//  AuthView.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

class AuthView: UIView {
    
    weak var viewControllerDelegate: AuthViewToViewControllerDelegate?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AuthView: ViewCoding {
    func buildViewHierarchy() {}
    func setupConstraints() {}
}
