//
//  IntroCell.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import UIKit

public class IntroCell: UICollectionViewCell, ReusableView {
    
    weak var viewModel: IntroCellProtocol?
    
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
    
    public func set(viewModel: IntroCellProtocol) {
        self.viewModel = viewModel
        
    }
    
}
