//
//  CommentEditViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 30.03.2022.
//

import Foundation

protocol CommentEditViewDataSource {}

protocol CommentEditViewEventSource {}

protocol CommentEditViewProtocol: CommentEditViewDataSource, CommentEditViewEventSource {}

final class CommentEditViewModel: BaseViewModel<CommentEditRouter>, CommentEditViewProtocol {
    
}
