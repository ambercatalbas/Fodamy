//
//  Comment.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 20.03.2022.
//

// MARK: - Comment
public struct Comment: Codable {
    public let id: Int
    public let text: String
    public let difference: String
    public let user: User

    public init(id: Int, text: String, difference: String, user: User) {
        self.id = id
        self.text = text
        self.difference = difference
        self.user = user
    }
}
