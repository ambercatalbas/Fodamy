//
//  ForgotPasswordRequest.swift
//  DataProvider
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

public struct ForgotPasswordRequest: APIDecodableResponseRequest {
    
    public typealias ResponseType = Auth
    
    public var path: String = "auth/forgot"
    public var method: RequestMethod = .post
    public var parameters: RequestParameters = [:]
    public var headers: RequestHeaders = [:]
    
    public init(email: String) {
        parameters["email"] = email
    }
    
}
