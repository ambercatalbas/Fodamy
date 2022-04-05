//
//  CategoryWithRecipesCellModel+Extensions.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

import Foundation

extension CategoryWithRecipesCellModel {
    
    convenience init(category: MainCategory) {
        let cellItems = category.recipes.map({ RecipeSmallCellModel(recipe: $0) })
        self.init(categoryId: category.id ?? 0, categoryImageURL: nil, categoryName: category.name, cellItems: cellItems)
    }
}
