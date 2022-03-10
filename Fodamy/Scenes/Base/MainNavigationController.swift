//
//  MainNavigationController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    #if DEBUG
    deinit {
        debugPrint("deinit \(self)")
    }
    #endif
    
}
