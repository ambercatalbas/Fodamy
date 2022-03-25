//
//  EmptyCell.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 25.03.2022.
//

import UIKit

public class EmptyCell: UICollectionViewCell, ReusableView {
    
    weak var viewModel: EmptyCellProtocol?
    
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
    
    public func set(viewModel: EmptyCellProtocol) {
        self.viewModel = viewModel
        
    }
    
}
