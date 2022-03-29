//
//  CommentCellModel+Extensions.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 25.03.2022.
//

import MobilliumUserDefaults

extension CommentCellModel {
    
    convenience init(comment: Comment) {
        let isOwner = comment.user.id == DefaultsKey.userId.value
        self.init(userId: comment.user.id,
                  imageUrl: comment.user.image?.url,
                  username: comment.user.username,
                  recipeCount: comment.user.recipeCount,
                  followedCount: comment.user.followedCount,
                  differenceText: comment.difference,
                  commentId: comment.id,
                  commentText: comment.text,
                  isOwner: isOwner,
                  isFollowing: comment.user.isFollowing)
    }
}
