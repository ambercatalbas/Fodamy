//
//  imageSliderViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 21.03.2022.
//

import Foundation

public protocol ImageSliderViewDataSource: AnyObject {
    func numberOfItemsAt(section: Int) -> Int
    func cellItemAt(indexPath: IndexPath) -> ImageSliderCellProtocol
    
//    var numberOfItems: Int { get }
//    var cellItems: [ImageSliderCellProtocol] { get set }
//    func cellItemAt(indexPath: IndexPath) -> ImageSliderCellProtocol
}

public protocol ImageSliderViewEventSource: AnyObject {
    
}

public protocol ImageSliderViewProtocol: ImageSliderViewDataSource, ImageSliderViewEventSource {
    
}

public final class ImageSliderViewModel: ImageSliderViewProtocol {
    public func cellItemAt(indexPath: IndexPath) -> ImageSliderCellProtocol {
        return cellItems[indexPath.row]
    }
    
    public func numberOfItemsAt(section: Int) -> Int {
        return cellItems.count
    }
    
    public var cellItems: [ImageSliderCellProtocol]
    
    public var numberOfItems: Int {
        return cellItems.count
    }

    public init(cellItems: [ImageSliderCellProtocol]) {
      
        self.cellItems = cellItems
    }
  
}
