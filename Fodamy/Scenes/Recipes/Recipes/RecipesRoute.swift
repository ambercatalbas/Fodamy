//
//  RecipesRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

protocol RecipesRoute {
    func pushRecipes(categoryId: Int, title: String)
}

extension RecipesRoute where Self: RouterProtocol {
    
    func pushRecipes(categoryId: Int, title: String) {
        let router = RecipesRouter()
        let viewModel = RecipesViewModel(recipesListingType: .categoryRecipes(categoryId: categoryId), router: router)
        viewModel.title = title
        let viewController = RecipesViewController(viewModel: viewModel)
        
        let transition = PushTransition()
        router.openTransition = transition
        router.viewController = viewController
        open(viewController, transition: transition)
    }
}
