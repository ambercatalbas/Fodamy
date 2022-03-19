//
//  RecipeDetailViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import Foundation

protocol RecipeDetailViewDataSource {
    var recipe: Recipe { get set }
    var comment: Comment? { get set }

}

protocol RecipeDetailViewEventSource {}

protocol RecipeDetailViewProtocol: RecipeDetailViewDataSource, RecipeDetailViewEventSource {
    func showInfo()
}

final class RecipeDetailViewModel: BaseViewModel<RecipeDetailRouter>, RecipeDetailViewProtocol {
    var comment: Comment?
    var recipe: Recipe
    
    init(recipe: Recipe, router: RecipeDetailRouter) {
        self.recipe = recipe
        super.init(router: router)
    }
    func showInfo() {
//        toast
        print("infobuttontapped")
        self.fetchCommentsListingType()
    }
}

// MARK: - Network
extension RecipeDetailViewModel {
    
    func fetchCommentsListingType() {
        dataProvider.request(for: GetRecipeCommentsRequest(recipeId: 7, page: 1)) { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let response):
                self.comment = response.data[0]
            case .failure(let error):
                print("failure data")
            }
        }
    }
    }
