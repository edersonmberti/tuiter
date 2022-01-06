//
//  AuthView.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

class AuthView: UIView {
    
    weak var viewControllerDelegate: AuthViewToViewControllerDelegate?
    
    private let iconHeaderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "TwitterIcon")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor(named: "Primary")!
        return imageView
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "See what's\nhappening in the\nworld right now."
        label.textColor = .white
        label.numberOfLines = 3
        label.font = UIFont.boldSystemFont(ofSize: 28)
        return label
    }()
    
    private let googleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("  Continue with Google", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setHeight(50)
        button.layer.cornerRadius = 25
        button.setImage(UIImage(named: "GoogleIcon"), for: .normal)
        return button
    }()
    
    private let appleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("  Continue with Apple", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setHeight(50)
        button.layer.cornerRadius = 25
        button.setImage(UIImage(systemName: "applelogo"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private let dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.setHeight(1)
        return view
    }()
    
    private let orLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "   Or   "
        return label
    }()
    
    private let createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create account", for: .normal)
        button.backgroundColor = UIColor(named: "Primary")!
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setHeight(50)
        button.layer.cornerRadius = 25
        return button
    }()
    
    private let privacyButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.contentHorizontalAlignment = .left
        let defaultAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.lightGray, .font: UIFont.systemFont(ofSize: 15)]
        let attributedTitle = NSMutableAttributedString(string: "By signing up, you agree to our ", attributes: defaultAttributes)
        let coloredAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(named: "Primary")!, .font: UIFont.systemFont(ofSize: 15)]
        attributedTitle.append(NSAttributedString(string: "Terms", attributes: coloredAttributes))
        attributedTitle.append(NSAttributedString(string: ", ", attributes: defaultAttributes))
        attributedTitle.append(NSAttributedString(string: "Privacy", attributes: coloredAttributes))
        attributedTitle.append(NSAttributedString(string: ", ", attributes: defaultAttributes))
        attributedTitle.append(NSAttributedString(string: "Policy", attributes: coloredAttributes))
        attributedTitle.append(NSAttributedString(string: ", and ", attributes: defaultAttributes))
        attributedTitle.append(NSAttributedString(string: "Cookie Use", attributes: coloredAttributes))
        attributedTitle.append(NSAttributedString(string: ".", attributes: defaultAttributes))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
    }()
    
    private let alreadyHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.contentHorizontalAlignment = .left
        let defaultAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.lightGray, .font: UIFont.systemFont(ofSize: 16)]
        let attributedTitle = NSMutableAttributedString(string: "Have an account already? ", attributes: defaultAttributes)
        let coloredAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(named: "Primary")!, .font: UIFont.systemFont(ofSize: 16)]
        attributedTitle.append(NSAttributedString(string: "Log in", attributes: coloredAttributes))
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AuthView: ViewCoding {
    func buildViewHierarchy() {
        addSubview(iconHeaderImageView)
        addSubview(descriptionLabel)
        addSubview(googleButton)
        addSubview(appleButton)
        addSubview(dividerView)
        addSubview(orLabel)
        addSubview(createAccountButton)
        addSubview(privacyButton)
        addSubview(alreadyHaveAccountButton)
    }
    
    func setupConstraints() {
        iconHeaderImageView.setDimensions(height: 32, width: 32)
        iconHeaderImageView.centerX(inView: self)
        iconHeaderImageView.anchor(top: safeAreaLayoutGuide.topAnchor, paddingTop: 4)
        
        descriptionLabel.anchor(top: iconHeaderImageView.bottomAnchor, left: safeAreaLayoutGuide.leftAnchor, bottom: googleButton.topAnchor, paddingTop: 40, paddingLeft: 24)
        
        googleButton.anchor(left: safeAreaLayoutGuide.leftAnchor, bottom: appleButton.topAnchor, right: safeAreaLayoutGuide.rightAnchor, paddingTop: 60, paddingLeft: 24, paddingBottom: 12, paddingRight: 24)
        
        appleButton.anchor(left: safeAreaLayoutGuide.leftAnchor, bottom: dividerView.topAnchor, right: safeAreaLayoutGuide.rightAnchor, paddingLeft: 24, paddingBottom: 16, paddingRight: 24)
        
        dividerView.anchor(left: safeAreaLayoutGuide.leftAnchor, bottom: createAccountButton.topAnchor, right: safeAreaLayoutGuide.rightAnchor, paddingLeft: 24, paddingBottom: 16, paddingRight: 24)
        
        orLabel.centerX(inView: self)
        orLabel.centerY(inView: dividerView)
        
        createAccountButton.anchor(left: safeAreaLayoutGuide.leftAnchor, bottom: privacyButton.topAnchor, right: safeAreaLayoutGuide.rightAnchor, paddingLeft: 24, paddingBottom: 28, paddingRight: 24)
        
        privacyButton.anchor(left: safeAreaLayoutGuide.leftAnchor, bottom: alreadyHaveAccountButton.topAnchor, right: safeAreaLayoutGuide.rightAnchor, paddingLeft: 24, paddingBottom: 40, paddingRight: 24)
        
        alreadyHaveAccountButton.anchor(left: safeAreaLayoutGuide.leftAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, right: safeAreaLayoutGuide.rightAnchor, paddingLeft: 24, paddingBottom: 12, paddingRight: 24)
    }
    
    func additionalSetup() {
        self.backgroundColor = .black
    }
}
