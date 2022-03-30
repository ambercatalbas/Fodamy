//
//  CommentInputView.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 29.03.2022.
//

import UIKit

public class CommentInputView: UIView {
    
    weak var viewModel: CommentInputViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureContents()
    }
    
    private func configureContents() {
        
    }
    
    public func set(viewModel: CommentInputViewProtocol) {
        self.viewModel = viewModel
        
    }
    
}
