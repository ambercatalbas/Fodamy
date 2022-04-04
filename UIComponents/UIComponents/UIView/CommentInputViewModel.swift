//
//  CommentInputViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 29.03.2022.
//

import Foundation

public protocol CommentInputViewDataSource: AnyObject {
    
}

public protocol CommentInputViewEventSource: AnyObject {
    
}

public protocol CommentInputViewProtocol: CommentInputViewDataSource, CommentInputViewEventSource {
    
}

public final class CommentInputViewModel: CommentInputViewProtocol {
    
}
