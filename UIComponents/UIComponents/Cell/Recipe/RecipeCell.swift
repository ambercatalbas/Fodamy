//
//  RecipeCell.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 17.03.2022.
//

import UIKit
import DataProvider

public class RecipeCell: UICollectionViewCell, ReusableView {
    
    weak var viewModel: RecipeCellProtocol?
    private let foodCard = FoodCardView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureContents()
    }
    
    private func configureContents() {
        addSubview(foodCard)
        backgroundColor = .appWhite
        foodCard.edgesToSuperview()
    }
    
    public func set(viewModel: RecipeCellProtocol) {
        self.viewModel = viewModel
        foodCard.set(viewModel: FoodCardViewModel(recipe: viewModel.recipe))

    }
    
}
