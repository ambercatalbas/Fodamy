//
//  StepsViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 20.03.2022.
//

import Foundation

public protocol StepsViewDataSource: AnyObject {
    var timeOfRecipe: String { get set}
    var directions: String { get set}
}

public protocol StepsViewEventSource: AnyObject {
    
}

public protocol StepsViewProtocol: StepsViewDataSource, StepsViewEventSource {
    
}

public final class StepsViewModel: StepsViewProtocol {
    public var directions: String
    public var timeOfRecipe: String
    
    public init(directions: String,
                timeOfRecipe: String) {
        self.directions = directions
        self.timeOfRecipe = timeOfRecipe
        
    }
}
