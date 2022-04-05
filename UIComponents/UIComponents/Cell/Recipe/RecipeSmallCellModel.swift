//
//  RecipeSmallCellModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

import Foundation

public protocol RecipeSmallCellDataSource: AnyObject {
    var recipe: Recipe { get }

}

public protocol RecipeSmallCellEventSource: AnyObject {
    
}

public protocol RecipeSmallCellProtocol: RecipeSmallCellDataSource, RecipeSmallCellEventSource {
    
}

public final class RecipeSmallCellModel: RecipeSmallCellProtocol {
    public var recipe: Recipe
    
    public init(recipe: Recipe) {
        self.recipe = recipe
    }
}
