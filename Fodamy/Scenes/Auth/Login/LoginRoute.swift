//
//  LoginRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 10.03.2022.
//

protocol LoginRoute {
    func placeOnWindowLogin()
}

extension LoginRoute where Self: RouterProtocol {
    
    func placeOnWindowLogin() {
        let router = LoginRouter()
        let viewModel = LoginViewModel(router: router)
        let viewController = LoginViewController(viewModel: viewModel)
        
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
