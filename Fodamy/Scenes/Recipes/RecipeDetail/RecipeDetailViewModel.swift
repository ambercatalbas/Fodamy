//
//  RecipeDetailViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import Foundation

protocol RecipeDetailViewDataSource {
    var recipe: Recipe { get set }
}

protocol RecipeDetailViewEventSource {}

protocol RecipeDetailViewProtocol: RecipeDetailViewDataSource, RecipeDetailViewEventSource {
    func showInfo()
}

final class RecipeDetailViewModel: BaseViewModel<RecipeDetailRouter>, RecipeDetailViewProtocol {
    
    var recipe: Recipe
    
    init(recipe: Recipe, router: RecipeDetailRouter) {
        self.recipe = recipe
        super.init(router: router)
    }
    func showInfo() {
//        toast
        print("infobuttontapped")
    }
}
