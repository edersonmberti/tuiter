//
//  MainView.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

final class MainView: UIView {
    
    weak var viewControllerDelegate: MainViewToViewControllerDelegate?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainView: ViewCoding {
    func buildViewHierarchy() {}
    func setupConstraints() {}
}
