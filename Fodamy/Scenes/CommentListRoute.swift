//
//  CommentListRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 29.03.2022.
//

protocol CommentListRoute {
    func pushCommentList(recipeId: Int, isKeyboardOpen: Bool?)
}

extension CommentListRoute where Self: RouterProtocol {
    
    func pushCommentList(recipeId: Int, isKeyboardOpen: Bool?) {
        let router = CommentListRouter()
        let viewModel = CommentListViewModel(recipeId: recipeId, router: router)
        let viewController = CommentListViewController(viewModel: viewModel)
        viewController.isKeyboardOpen = isKeyboardOpen ?? false
        let transition = PushTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
