//
//  RecipesViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 17.03.2022.
//

import Foundation

protocol RecipesViewDataSource {
    func numberOfItemsAt(section: Int) -> Int
    func cellItemAt(indexPath: IndexPath) -> RecipeCellProtocol
}

protocol RecipesViewEventSource {}

protocol RecipesViewProtocol: RecipesViewDataSource, RecipesViewEventSource {}

final class RecipesViewModel: BaseViewModel<RecipesRouter>, RecipesViewProtocol {
    
    func numberOfItemsAt(section: Int) -> Int {
        return cellItems.count
    }
    
    func cellItemAt(indexPath: IndexPath) -> RecipeCellProtocol {
        return cellItems[indexPath.row]
    }
    
    private let cellItems: [RecipeCellProtocol] = [RecipeCellModel(userId: 28,
                                                            userImageUrl: "https://fodamy.mobillium.com/images/3c4f17ca-1e63-4236-ae08-1a5d5e3cd793.jpg",
                                                            username: "ahmeti",
                                                            followingCount: 1,
                                                            recipeCount: 2,
                                                            recipeTitle: "Tarhana Çorbası",
                                                            recipeCategoryName: "sıcak çorbalar",
                                                            recipeImageUrl: "https://fodamy.mobillium.com/images/60b0be39-5534-48eb-a8ec-3b8741380182.jpg",
                                                            likeCount: 3,
                                                            commentCount: 1,
                                                            isEditorChoice: true),
                                                   RecipeCellModel(userId: 28,
                                                                                                           userImageUrl: "https://fodamy.mobillium.com/images/3c4f17ca-1e63-4236-ae08-1a5d5e3cd793.jpg",
                                                                                                           username: "ahmeti",
                                                                                                           followingCount: 1,
                                                                                                           recipeCount: 2,
                                                                                                           recipeTitle: "Tarhana Çorbası",
                                                                                                           recipeCategoryName: "sıcak çorbalar",
                                                                                                           recipeImageUrl: "https://fodamy.mobillium.com/images/60b0be39-5534-48eb-a8ec-3b8741380182.jpg",
                                                                                                           likeCount: 3,
                                                                                                           commentCount: 1,
                                                                                                           isEditorChoice: true)]
    
    
}
