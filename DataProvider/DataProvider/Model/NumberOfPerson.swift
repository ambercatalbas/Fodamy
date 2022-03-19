//
//  NumberOfPerson.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

// MARK: - NumberOfPerson
public struct NumberOfPerson: Codable {
    public let id: Int?
    public let text: String

    public init(id: Int?, text: String) {
        self.id = id
        self.text = text
    }
}
