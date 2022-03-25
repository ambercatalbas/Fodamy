//
//  imageSliderViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 21.03.2022.
//

import Foundation

public protocol ImageSliderViewDataSource: AnyObject {
    var numberOfItems: Int { get set }
    var cellItems: [ImageSliderCellProtocol] { get set }
}

public protocol ImageSliderViewEventSource: AnyObject {
    
}

public protocol ImageSliderViewProtocol: ImageSliderViewDataSource, ImageSliderViewEventSource {
    
}

public final class ImageSliderViewModel: ImageSliderViewProtocol {
    public var numberOfItems: Int
    
    public var cellItems: [ImageSliderCellProtocol]
    
    public init(cellItems: [ImageSliderCellProtocol]) {
      
        self.cellItems = cellItems
        self.numberOfItems = cellItems.count
        
    }
  
}
