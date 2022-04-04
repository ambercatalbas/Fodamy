//
//  LoginWarningPopupRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 26.03.2022.
//

protocol LoginWarningPopupRoute {
    func presentLoginWarningPopup(loginHandler: @escaping VoidClosure)
}

extension LoginWarningPopupRoute where Self: RouterProtocol {
    
    func presentLoginWarningPopup(loginHandler: @escaping VoidClosure) {
        let router = LoginWarningPopupRouter()
        let viewModel = LoginWarningPopupViewModel(router: router)
        let viewController = LoginWarningPopupViewController(viewModel: viewModel)
        viewModel.loginHandler = loginHandler

        let transition = ModalTransition()
        transition.modalPresentationStyle = .overFullScreen
        transition.modalTransitionStyle = .crossDissolve
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
