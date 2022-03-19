//
//  Image.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 13.03.2022.
//

import Foundation

// MARK: - Image
public struct Image: Codable {
    public let width, height: Int?
    public let key: String?
    public let order: Int?
    public let url: String?

    public init(width: Int?, height: Int?, key: String?, order: Int?, url: String?) {
        self.width = width
        self.height = height
        self.key = key
        self.order = order
        self.url = url
    }
}
