//
//  GetRecipeCommentsRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 20.03.2022.
//

public struct GetRecipeCommentsRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = Comments
    
    public var path: String = "recipe/{recipeId}/comment"
    public var method: RequestMethod = .get
    public var parameters: RequestParameters = [:]
    public var headers: RequestHeaders = [:]
    
    public init(recipeId: Int, page: Int? = 1) {
        self.path = "recipe/\(recipeId)/comment"
        self.parameters["page"] = page
    }
    
}
