//
//  CommentListViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 29.03.2022.
//

import Foundation

protocol CommentListViewDataSource {
    func numberOfItemsAt(section: Int) -> Int
    func cellItemAt(indexPath: IndexPath) -> CommentCellProtocol
}

protocol CommentListViewEventSource {}

protocol CommentListViewProtocol: CommentListViewDataSource, CommentListViewEventSource {}

final class CommentListViewModel: BaseViewModel<CommentListRouter>, CommentListViewProtocol {
    
    func numberOfItemsAt(section: Int) -> Int {
        return cellItems.count
    }
    
    func cellItemAt(indexPath: IndexPath) -> CommentCellProtocol {
        return cellItems[indexPath.row]
    }
    
    private let cellItems: [CommentCellProtocol] = []
    
}
