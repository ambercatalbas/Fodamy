//
//  GetCategoriesWithRecipesRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 4.04.2022.
//

public struct GetCategoriesWithRecipesRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = BaseResponse<[MainCategory]>

    public var path: String = "category-recipes"
    public var method: RequestMethod = .get
    public var parameters: RequestParameters = [:]
    
    public init(page: Int) {
        parameters["page"] = page
    }
    
}
