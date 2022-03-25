//
//  EmptyCell.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 25.03.2022.
//

import UIKit

public class EmptyCell: UICollectionViewCell, ReusableView {
    
    private let infoLabel = UILabelBuilder()
        .textAlignment(.center)
        .numberOfLines(0)
        .font(.font(.nunitoSemiBold, size: .xLarge))
        .textColor(.appRaven)
        .text(L10n.RecipeDetail.noComment)
        .build()
    
    weak var viewModel: EmptyCellProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        configureContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addSubViews()
        configureContents()
    }
    
}

// MARK: - UILayout
extension EmptyCell {
    
    private func addSubViews() {
        contentView.addSubview(infoLabel)
        infoLabel.edgesToSuperview()
    }
}

// MARK: - Configure and Localize
extension EmptyCell {
    private func configureContents() {
        contentView.backgroundColor = .appWhite
    }
}
