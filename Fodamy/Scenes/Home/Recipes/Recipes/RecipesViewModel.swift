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
    
    private let cellItems: [RecipeCellProtocol] = []
    
}
