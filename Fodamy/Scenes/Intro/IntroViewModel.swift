//
//  IntroViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import Foundation

protocol IntroViewDataSource {
    func numberOfItemsAt(section: Int) -> Int
    func cellItemAt(indexPath: IndexPath) -> IntroCellProtocol
}

protocol IntroViewEventSource {}

protocol IntroViewProtocol: IntroViewDataSource, IntroViewEventSource {}

final class IntroViewModel: BaseViewModel<IntroRouter>, IntroViewProtocol {
    
    func numberOfItemsAt(section: Int) -> Int {
        return cellItems.count
    }
    
    func cellItemAt(indexPath: IndexPath) -> IntroCellProtocol {
        return cellItems[indexPath.row]
    }
    
    private let cellItems: [IntroCellProtocol] = []
    
}
