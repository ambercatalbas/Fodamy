//
//  Recipes.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

// MARK: - Recipes
public struct Recipes: Codable {
    public let data: [Recipe]
    public let pagination: Pagination

    public init(data: [Recipe], pagination: Pagination) {
        self.data = data
        self.pagination = pagination
    }
}
