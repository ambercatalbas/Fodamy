//
//  RecipeCell.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 17.03.2022.
//

import UIKit

public class RecipeCell: UICollectionViewCell, ReusableView {
    
    weak var viewModel: RecipeCellProtocol?
    private let foodCard = FoodCardView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureContents()
    }
    
    private func configureContents() {
        addSubview(foodCard)
        backgroundColor = .appWhite
        foodCard.edgesToSuperview()
    }
    
    public func set(viewModel: RecipeCellProtocol) {
        self.viewModel = viewModel
        foodCard.set(viewModel: FoodCardViewModel(userId: viewModel.userId,
                                                  userImageUrl: viewModel.userImageUrl,
                                                  username: viewModel.username,
                                                  followingCount: viewModel.followingCount,
                                                  recipeCount: viewModel.recipeCount,
                                                  recipeTitle: viewModel.recipeTitle,
                                                  recipeCategoryName: viewModel.recipeCategoryName,
                                                  recipeImageUrl: viewModel.recipeImageUrl,
                                                  likeCount: viewModel.likeCount,
                                                  commentCount: viewModel.commentCount,
                                                  isEditorChoice: viewModel.isEditorChoice))
    }
    
}
