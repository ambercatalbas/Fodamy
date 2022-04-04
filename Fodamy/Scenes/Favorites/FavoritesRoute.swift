//
//  FavoritesRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

protocol FavoritesRoute {
    func pushFavorites()
}

extension FavoritesRoute where Self: RouterProtocol {
    
    func pushFavorites() {
        let router = FavoritesRouter()
        let viewModel = FavoritesViewModel(router: router)
        let viewController = FavoritesViewController(viewModel: viewModel)
        
        let transition = PushTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
