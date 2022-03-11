//
//  LoginViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 10.03.2022.
//

import UIKit

final class LoginViewController: BaseViewController<LoginViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureContents()
        setLocalize()
    }
}

// MARK: - UILayout
extension LoginViewController {
    private func addSubViews() {
        
    }
    
}
// MARK: - Configure and setLocalize
extension LoginViewController {
    private func configureContents() {
        view.backgroundColor = .red
    }
    private func setLocalize() {
        
    }
    
}

// MARK: - Actions
extension LoginViewController {

    
}


