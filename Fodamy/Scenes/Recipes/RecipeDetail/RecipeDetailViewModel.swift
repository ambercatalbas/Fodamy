//
//  RecipeDetailViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import Foundation
import UIComponents
import KeychainSwift

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
    func likeButtonTapped()
    func followButtonTapped()
    func commentButtonTapped()
    func didSelectComment()

}

final class RecipeDetailViewModel: BaseViewModel<RecipeDetailRouter>, RecipeDetailViewProtocol {

    var toggleIsLiked: VoidClosure?
    var toggleIsFollowing: VoidClosure?
    var reloadCommentData: VoidClosure?
    var reloadDetailData: VoidClosure?
    var recipe: Recipe
    var imageSliderCellItems: [ImageSliderCellProtocol] = []
    let keychain = KeychainSwift()

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
        recipe.images?.forEach({ image in
            imageSliderCellItems.append(ImageSliderCellModel(imageUrl: image.url ?? "", isEditorChoice: recipe.isEditorChoice))
        })
    }
    
}

// MARK: - Actions
extension RecipeDetailViewModel {
    
    func likeButtonTapped() {
print("likebutton")
    }
    
    func followButtonTapped() {
        print("followButtonTapped")

    }
    
    func commentButtonTapped() {
        print("commentButtonTapped")

    }
    
    func didSelectComment() {
        print("didSelectComment")

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

    }
