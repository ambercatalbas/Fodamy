//
//  MainCategory.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

// MARK: - MainCategory
public struct MainCategory: Codable {
    public let id: Int
    public let name: String?
    public let recipes: [Recipe]

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case recipes
    }
}

