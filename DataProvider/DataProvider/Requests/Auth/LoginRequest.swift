//
//  LoginRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 13.03.2022.
//

public struct LoginRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = Auth

    public var path: String = "auth/login"
    public var method: RequestMethod = .post
    public var parameters: RequestParameters = [:]
    public var headers: RequestHeaders = [:]
    
    public init(username: String, password: String) {
        parameters["username"] = username
        parameters["password"] = password
    }
    
}
