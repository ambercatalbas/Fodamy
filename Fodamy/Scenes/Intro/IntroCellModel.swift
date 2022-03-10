//
//  IntroCellModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import Foundation

public protocol IntroCellDataSource: AnyObject {
    
}

public protocol IntroCellEventSource: AnyObject {
    
}

public protocol IntroCellProtocol: IntroCellDataSource, IntroCellEventSource {
    
}

public final class IntroCellModel: IntroCellProtocol {
    
}
