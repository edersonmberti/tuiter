//
//  LobbyView.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

class LobbyView: UIView {
    
    weak var viewControllerDelegate: LobbyViewToViewControllerDelegate?
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "TwitterIconWhite")
        return imageView
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LobbyView: ViewCoding {
    func buildViewHierarchy() {
        addSubview(iconImageView)
    }
    
    func setupConstraints() {
        iconImageView.center(inView: self)
    }
    
    func additionalSetup() {
        backgroundColor = UIColor(named: "Primary")
    }
}
