//
//  FoodCardViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 15.03.2022.
//

import Foundation
import DataProvider

public protocol FoodCardViewDataSource: AnyObject {
    var recipe: Recipe { get }
}

public protocol FoodCardViewEventSource: AnyObject {
    
}

public protocol FoodCardViewProtocol: FoodCardViewDataSource, FoodCardViewEventSource {
    
}

public final class FoodCardViewModel: FoodCardViewProtocol {
    public var recipe: Recipe
    
    

    public init(recipe: Recipe) {
        self.recipe = recipe
    }
    
}
