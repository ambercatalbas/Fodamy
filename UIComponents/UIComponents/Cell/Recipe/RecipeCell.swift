//
//  RecipeCell.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 17.03.2022.
//

import UIKit

public class RecipeCell: UICollectionViewCell, ReusableView {
    
    weak var viewModel: RecipeCellProtocol?
    
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
    
    public func set(viewModel: RecipeCellProtocol) {
        self.viewModel = viewModel
        
    }
    
}
