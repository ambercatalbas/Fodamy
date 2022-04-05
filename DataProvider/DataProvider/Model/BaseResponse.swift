//
//  BaseResponse.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

public struct BaseResponse<T: Decodable>: Decodable {
    public let data: T
    public let pagination: Pagination
}
