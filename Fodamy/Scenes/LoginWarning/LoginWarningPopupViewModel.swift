//
//  LoginWarningPopupViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 26.03.2022.
//

import Foundation

protocol LoginWarningPopupViewDataSource {}

protocol LoginWarningPopupViewEventSource {
    var loginHandler: VoidClosure? { get set }

}

protocol LoginWarningPopupViewProtocol: LoginWarningPopupViewDataSource, LoginWarningPopupViewEventSource {
    func giveUpButtonAction()
    func loginButtonAction()
}

final class LoginWarningPopupViewModel: BaseViewModel<LoginWarningPopupRouter>, LoginWarningPopupViewProtocol {
    func giveUpButtonAction() {
        router.close()
    }
    
    func loginButtonAction() {
        router.close()
        loginHandler?()
    
    }
    
    var loginHandler: VoidClosure?
    
    
}
