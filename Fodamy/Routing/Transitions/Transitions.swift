//
//  Transitions.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import Foundation
import UIKit

protocol Transition: AnyObject {
    var viewController: UIViewController? { get set }

    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
