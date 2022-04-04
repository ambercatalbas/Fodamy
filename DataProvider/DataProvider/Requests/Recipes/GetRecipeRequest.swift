//
//  GetRecipeRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//
public enum ListingType {
    case editorChoiceRecipes
    case recentlyAddedRecipes
}

public struct GetRecipeRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = Recipes
    
    public var path: String = "recipe/"
    public var method: RequestMethod = .get
    public var parameters: RequestParameters = [:]
    public var headers: RequestHeaders = [:]
    public let listingType: ListingType
    
    public init(page: Int, listingType: ListingType) {
        self.parameters["page"] = page
        self.listingType = listingType
       
        switch listingType {
        case .editorChoiceRecipes:
            path = "editor-choices"
        case .recentlyAddedRecipes:
            path = "recipe/"
        }
    }
    
}
