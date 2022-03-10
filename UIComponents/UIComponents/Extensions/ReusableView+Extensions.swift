//
//  ReusableView+Extensions.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 10.03.2022.
//

import UIKit

public extension ReusableView where Self: UIView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}
