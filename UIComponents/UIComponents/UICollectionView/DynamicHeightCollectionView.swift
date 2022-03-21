//
//  DynamicHeightCollectionView.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 22.03.2022.
//

public class DynamicHeightCollectionView: UICollectionView {
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        if !(__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize)) {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    public override var intrinsicContentSize: CGSize {
        return contentSize
    }
}
