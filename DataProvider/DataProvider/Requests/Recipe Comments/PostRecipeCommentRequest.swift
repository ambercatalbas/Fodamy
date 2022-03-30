//
//  PostRecipeCommentsRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 30.03.2022.
//

public struct PostRecipeCommentRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = Comment
    
    public var path: String = "recipe/{recipeId}/comment"
    public var method: RequestMethod = .post
    public var parameters: RequestParameters = [:]
    public var headers: RequestHeaders = [:]
    
    public init(recipeId: Int, text: String) {
        self.path = "recipe/\(recipeId)/comment"
        self.parameters["text"] = text
    }
    
}
