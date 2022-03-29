//
//  UserCardViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 15.03.2022.
//

import Foundation

public protocol UserCardViewDataSource: AnyObject {
    var userId: Int? { get }
    var userImageUrl: String? { get }
    var username: String? { get }
    var userCountText: String? { get }
    var isFollowing: Bool? { get }
    var followButtonTitle: String? { get }
    var followButtonSetTitleColor: UIColor? { get }
    var followButtonBackgroundColor: UIColor? { get }
    var followedCount: Int { get }
    var recipeCount: Int { get }
}

public protocol UserCardViewEventSource: AnyObject {
    
}

public protocol UserCardViewProtocol: UserCardViewDataSource, UserCardViewEventSource {
    
}

public final class UserCardViewModel: UserCardViewProtocol {
    public var followButtonSetTitleColor: UIColor?
    public var followButtonBackgroundColor: UIColor?
    public var followButtonTitle: String?
    public var isFollowing: Bool?
    public var userId: Int?
    public var userImageUrl: String?
    public var username: String?
    public var userCountText: String?
    public var followedCount: Int
    public var recipeCount: Int
    
    public init(userId: Int,
                userImageUrl: String?,
                username: String?,
                isfollowing: Bool?,
                recipeCount: Int,
                followedCount: Int) {
        
        self.userId = userId
        self.userImageUrl = userImageUrl
        self.username = username
        self.isFollowing = isfollowing
        self.recipeCount = recipeCount
        self.followedCount = followedCount
        self.userCountText = "\(self.recipeCount) \(L10n.General.recipe) \(self.followedCount) \(L10n.General.follower)"
        if isFollowing ?? true {
            self.followButtonTitle = L10n.General.following
            self.followButtonSetTitleColor = .appWhite
            self.followButtonBackgroundColor = .appRed
        } else {
            self.followButtonTitle = L10n.General.follow
            self.followButtonSetTitleColor = .appRed
            self.followButtonBackgroundColor = .appWhite
        }
    }
    
}
