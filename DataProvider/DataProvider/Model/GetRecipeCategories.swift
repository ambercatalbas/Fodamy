//
//  GetRecipeCategories.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

import Foundation

// MARK: - GetRecipeCategories
public struct GetRecipeCategories: Codable {
    public let data: [MainCategory]
    public let pagination: Pagination

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case pagination = "pagination"
    }

    public init(data: [MainCategory], pagination: Pagination) {
        self.data = data
        self.pagination = pagination
    }
}

