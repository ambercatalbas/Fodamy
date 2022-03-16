//
//  FoodCardViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 15.03.2022.
//

import Foundation

public protocol FoodCardViewDataSource: AnyObject {
    var userId: Int { get }
    var userImageUrl: String? { get }
    var username: String? { get }
    var userCountText: String? { get }
    var followingCount: Int { get }
    var recipeCount: Int { get }
    var recipeTitle: String? { get }
    var recipeCategoryName: String? { get }
    var recipeImageUrl: String? { get }
    var recipeCountText: String? { get }
    var likeCount: Int { get }
    var commentCount: Int { get }
    var isEditorChoice: Bool? { get }
}

public protocol FoodCardViewEventSource: AnyObject {
    
}

public protocol FoodCardViewProtocol: FoodCardViewDataSource, FoodCardViewEventSource {
    
}

public final class FoodCardViewModel: FoodCardViewProtocol {
    public var recipeTitle: String?
    public var userId: Int
    public var userImageUrl: String?
    public var username: String?
    public var userCountText: String?
    public var followingCount: Int
    public var recipeCount: Int
    public var recipeCategoryName: String?
    public var recipeImageUrl: String?
    public var recipeCountText: String?
    public var likeCount: Int
    public var commentCount: Int
    public var isEditorChoice: Bool?

    public init(userId: Int,
                userImageUrl: String?,
                username: String?,
                followingCount: Int,
                recipeCount: Int,
                recipeTitle: String?,
                recipeCategoryName: String?,
                recipeImageUrl: String?,
                likeCount: Int,
                commentCount: Int,
                isEditorChoice: Bool?) {
  
        self.userId = userId
        self.userImageUrl = userImageUrl
        self.username = username
        self.followingCount = followingCount
        self.recipeCount = recipeCount
        self.userCountText = "\(self.recipeCount) \(L10n.General.recipe) \(self.followingCount) \(L10n.General.follower)"
        self.recipeTitle = recipeTitle
        self.recipeCategoryName = recipeCategoryName
        self.recipeImageUrl = recipeImageUrl
        self.likeCount = likeCount
        self.commentCount = commentCount
        self.recipeCountText = "\(self.commentCount) \(L10n.General.comment) \(self.likeCount) \(L10n.General.like)"
        self.isEditorChoice = isEditorChoice

    }
    
}
