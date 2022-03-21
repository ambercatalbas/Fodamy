//
//  ImageSliderCellModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 21.03.2022.
//

import Foundation

public protocol ImageSliderCellDataSource: AnyObject {
    
    var imageUrl: String { get }
    var isEditorChoice: Bool { get }
    
}

public protocol ImageSliderCellEventSource: AnyObject {
    
}

public protocol ImageSliderCellProtocol: ImageSliderCellDataSource, ImageSliderCellEventSource {
    
}

public final class ImageSliderCellModel: ImageSliderCellProtocol {
    
    public var imageUrl: String
    public var isEditorChoice: Bool
    
    public init(imageUrl: String, isEditorChoice: Bool) {
        self.imageUrl = imageUrl
        self.isEditorChoice = isEditorChoice
    }
    
}
