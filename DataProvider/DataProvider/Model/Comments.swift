//
//  Comments.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 20.03.2022.
//

import Foundation

// MARK: - Comments
public struct Comments: Codable {
    public let data: [Comment]
    public let pagination: Pagination

    public init(data: [Comment], pagination: Pagination) {
        self.data = data
        self.pagination = pagination
    }
}

