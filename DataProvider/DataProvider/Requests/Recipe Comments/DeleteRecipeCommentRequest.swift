//
//  DeleteRecipeCommentRequestRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 30.03.2022.
//

public struct DeleteRecipeCommentRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = SuccessResponse
    
    public var path: String = "recipe/{recipeId}/comment/{commentId}"
    public var method: RequestMethod = .delete
    public var parameters: RequestParameters = [:]
    public var headers: RequestHeaders = [:]
    
    public init(recipeId: Int,
                commentId: Int) {
        self.path = "recipe/\(recipeId)/comment/\(commentId)"
    }
}
