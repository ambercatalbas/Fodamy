//
//  CommentCell.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 22.03.2022.
//

import UIKit

public class CommentCell: UICollectionViewCell, ReusableView {
    
    private let userCardView = UserCardView()
    weak var viewModel: CommentCellProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureContents()
    }
    
    private func configureContents() {
        
    }
    
    public func set(viewModel: CommentCellProtocol) {
        self.viewModel = viewModel
        userCardView.set(viewModel: UserCardViewModel(userId: viewModel.userId,
                                                      userImageUrl: viewModel.userImageUrl,
                                                      username: viewModel.username,
                                                      isfollowing: viewModel.isFollowing,
                                                      recipeCount: viewModel.recipeCount,
                                                      followingCount: viewModel.followingCount))
    }
    
}
