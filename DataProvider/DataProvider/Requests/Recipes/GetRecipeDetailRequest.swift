//
//  GetRecipeDetailRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 26.03.2022.
//

public struct GetRecipeDetailRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = RecipeDetail
    
    public var path: String = "recipe/{recipeId}"
    public var method: RequestMethod = .get
    
    public init(recipeId: Int) {
        self.path = "recipe/\(recipeId)"
    }
}
