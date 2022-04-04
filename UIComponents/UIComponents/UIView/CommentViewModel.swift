//
//  CommentViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 20.03.2022.
//

import Foundation

public protocol CommentViewDataSource: AnyObject {
    var comment: Comment { get set }

}

public protocol CommentViewEventSource: AnyObject {
    
}

public protocol CommentViewProtocol: CommentViewDataSource, CommentViewEventSource {
    
}

public final class CommentViewModel: CommentViewProtocol {
    public var comment: Comment
    
    public init(comment: Comment) {
        self.comment = comment
    }
    
}
