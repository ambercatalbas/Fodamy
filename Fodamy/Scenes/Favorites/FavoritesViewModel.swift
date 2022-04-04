//
//  FavoritesViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import Foundation

protocol FavoritesViewDataSource {
    var recipe: Recipe? { get }
}

protocol FavoritesViewEventSource {
    var didSuccessFetchRecipes: VoidClosure? { get set }

}

protocol FavoritesViewProtocol: FavoritesViewDataSource, FavoritesViewEventSource {}

final class FavoritesViewModel: BaseViewModel<FavoritesRouter>, FavoritesViewProtocol {
    var didSuccessFetchRecipes: VoidClosure?
    var recipe: Recipe?
    
    init(router: FavoritesRouter) {
        super.init(router: router)
    }
    
    func fetchRecipesListingType() {

        dataProvider.request(for: GetRecipeRequest(page: 1, listingType: .editorChoiceRecipes)) { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let response):
                self.recipe = response.data[0]
                self.didSuccessFetchRecipes?()
            case .failure(let error):
                print("err")
            }
        }
    }
}
