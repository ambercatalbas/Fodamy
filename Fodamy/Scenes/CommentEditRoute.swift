//
//  CommentEditRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 30.03.2022.
//

protocol CommentEditRoute {
    func presentCommentEdit()
}

extension CommentEditRoute where Self: RouterProtocol {
    
    func presentCommentEdit() {
        let router = CommentEditRouter()
        let viewModel = CommentEditViewModel(router: router)
        let viewController = CommentEditViewController(viewModel: viewModel)
        
        let transition = ModalTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
