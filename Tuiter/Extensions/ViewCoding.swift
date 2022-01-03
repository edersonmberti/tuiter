//
//  ViewCoding.swift
//  Tuiter
//
//  Created by Ederson Machado Berti on 22/12/21.
//

import UIKit

public protocol ViewCoding {
    func buildViewHierarchy()
    func setupConstraints()
    func additionalSetup()
    func buildView()
}

public extension ViewCoding {
    func buildView() {
        buildViewHierarchy()
        setupConstraints()
        additionalSetup()
    }

    func additionalSetup() {}
}
