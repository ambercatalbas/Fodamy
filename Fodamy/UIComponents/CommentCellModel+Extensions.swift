//
//  CommentCellModel+Extensions.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 25.03.2022.
//

import MobilliumUserDefaults

extension CommentCellModel {
    
    convenience init(comment: Comment) {
        let recipeAndFollowerCountText = "\(comment.user.recipeCount) \(L10n.General.recipe) \(comment.user.followedCount) \(L10n.General.follower)"
        let isOwner = comment.user.id == DefaultsKey.userId.value
        self.init(comment: Comment)
//        self.init(userId: comment.user.id,
//                  imageUrl: comment.user.image?.url,
//                  username: comment.user.username,
//                  recipeAndFollowerCountText: recipeAndFollowerCountText,
//                  timeDifferenceText: comment.difference,
//                  commentId: comment.id,
//                  commentText: comment.text,
//                  isOwner: isOwner)
    }
}
