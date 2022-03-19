//
//  Recipe.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import Foundation

// MARK: - Recipe
public struct Recipe: Codable {
    public let id: Int?
    public let title: String?
    public let isEditorChoice: Bool
    public let likeCount: Int
    public let commentCount: Int
    public let user: User
    public let category: Category?
    public let images: [Image]?

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case isEditorChoice = "is_editor_choice"
        case likeCount = "like_count"
        case commentCount = "comment_count"
        case user
        case category
        case images
    }

    public init(id: Int?,
                title: String?,
                isEditorChoice: Bool,
                likeCount: Int,
                commentCount: Int,
                user: User,
                category: Category?,
                images: [Image]?) {
        self.id = id
        self.title = title
        self.isEditorChoice = isEditorChoice
        self.likeCount = likeCount
        self.commentCount = commentCount
        self.user = user
        self.category = category
        self.images = images
    }
}
