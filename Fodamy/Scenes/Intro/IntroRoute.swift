//
//  IntroRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

protocol IntroRoute {
    func placeOnWindowIntro()
}

extension IntroRoute where Self: RouterProtocol {
    
    func placeOnWindowIntro() {
        let router = IntroRouter()
        let viewModel = IntroViewModel(router: router)
        let viewController = IntroViewController(viewModel: viewModel)
        
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
