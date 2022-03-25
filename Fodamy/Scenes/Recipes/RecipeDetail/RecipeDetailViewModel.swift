//
//  RecipeDetailViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import Foundation

protocol RecipeDetailViewDataSource {
    var recipe: Recipe { get set }
    
    func commentNumberOfItemsAt(section: Int) -> Int
    func commentCellItemAt(indexPath: IndexPath) -> CommentCellProtocol
}

protocol RecipeDetailViewEventSource {
    var toggleIsLiked: VoidClosure? { get set }
    var toggleIsFollowing: VoidClosure? { get set }
    var reloadCommentData: VoidClosure? { get set }
    var reloadDetailData: VoidClosure? { get set }
}

protocol RecipeDetailViewProtocol: RecipeDetailViewDataSource, RecipeDetailViewEventSource {
    func showInfo()
}

final class RecipeDetailViewModel: BaseViewModel<RecipeDetailRouter>, RecipeDetailViewProtocol {
    var toggleIsLiked: VoidClosure?
    var toggleIsFollowing: VoidClosure?
    var reloadCommentData: VoidClosure?
    var reloadDetailData: VoidClosure?
    var recipe: Recipe
    var imageSliderCellItems: [ImageSliderCellProtocol] = []
    
    init(recipe: Recipe, router: RecipeDetailRouter) {
        self.recipe = recipe
        super.init(router: router)
        
    }
    
    func commentNumberOfItemsAt(section: Int) -> Int {
        return commentCellItems.count
    }
    
    func commentCellItemAt(indexPath: IndexPath) -> CommentCellProtocol {
        return commentCellItems[indexPath.row]
    }
    
    var commentCellItems: [CommentCellProtocol] = []
    func showInfo() {
   
    }
}

// MARK: - Network
extension RecipeDetailViewModel {
    
    func getRecipeComment() {
        let request = GetRecipeCommentsRequest(recipeId: recipe.id)
        dataProvider.request(for: request) { [weak self] result in
            switch result {
            case .success(let response):
                guard let self = self else { return }
                let commentCellItems = response.data.map({ CommentCellModel(comment: $0) })
                self.commentCellItems = commentCellItems
                self.reloadCommentData?()
            case .failure(_ ):
                self?.reloadCommentData?()
            }
        }
    }
//        func fetchCommentsListingType() {
//            dataProvider.request(for: GetRecipeCommentsRequest(recipeId: 7, page: 1)) { [weak self] (result) in
//                guard let self = self else { return }
//                switch result {
//                case .success(let response):
//                    self.comment = response.data[0]
//                case .failure(let error):
//                    print("failure data")
//                }
//            }
//        }
    }
