//
//  FavoriteCardViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 31.03.2022.
//

import Foundation
import DataProvider

public protocol FavoriteCardViewDataSource: AnyObject {
    var recipe: Recipe { get }

}

public protocol FavoriteCardViewEventSource: AnyObject {
    
}

public protocol FavoriteCardViewProtocol: FavoriteCardViewDataSource, FavoriteCardViewEventSource {
    
}

public final class FavoriteCardViewModel: FavoriteCardViewProtocol {
    public var recipe: Recipe
    
    public init(recipe: Recipe) {
        self.recipe = recipe
    }
}
