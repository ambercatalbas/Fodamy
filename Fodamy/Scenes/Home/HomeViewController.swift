//
//  HomeViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

final class HomeViewController: BaseViewController<HomeViewModel> {
    
    private let pushLoginButton = ButtonFactory.createPrimaryButton(style: .large)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pushLoginButton)
        pushLoginButton.centerXToSuperview()
        pushLoginButton.centerYToSuperview()
        pushLoginButton.setTitle("LoginScreen", for: .normal)
        pushLoginButton.addTarget(self, action: #selector(pushLogin), for: .touchUpInside)
    }
    @objc
    private func pushLogin() {
        viewModel.showLogin()
    }
}
