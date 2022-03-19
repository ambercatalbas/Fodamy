//
//  InfoCardViewModel.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 19.03.2022.
//

import Foundation

public protocol InfoCardViewDataSource: AnyObject {
    var recipeName: String { get set }
    var categoryName: String { get set }
    var difference: String { get set }
    var commentCount: Int { get set }
    var likeCount: Int { get set }
    var commentCountText: NSAttributedString { get set }
    var likeCountText: NSAttributedString { get set }
}

public protocol InfoCardViewEventSource: AnyObject {
}

public protocol InfoCardViewProtocol: InfoCardViewDataSource, InfoCardViewEventSource {
}

public final class InfoCardViewModel: InfoCardViewProtocol {
    
    public var recipeName: String
    public var categoryName: String
    public var difference: String
    public var commentCount: Int
    public var likeCount: Int
    public var commentCountText: NSAttributedString
    public var likeCountText: NSAttributedString
    
    public init(recipeName: String,
                categoryName: String,
                difference: String,
                commentCount: Int,
                likeCount: Int) {
        self.recipeName = recipeName
        self.categoryName = categoryName
        self.difference = difference
        self.commentCount = commentCount
        self.likeCount = likeCount
        let text = NSMutableAttributedString()
        text.append(NSAttributedString(string: "\(commentCount)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.appRed]))
        text.append(NSAttributedString(string: " ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]))
        text.append(NSAttributedString(string: L10n.General.comment, attributes: [NSAttributedString.Key.foregroundColor: UIColor.appRaven]))
        self.commentCountText = text
        let likeCountText = NSMutableAttributedString()
        likeCountText.append(NSAttributedString(string: "\(likeCount)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.appRed]))
        likeCountText.append(NSAttributedString(string: " ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]))
        likeCountText.append(NSAttributedString(string: L10n.General.like, attributes: [NSAttributedString.Key.foregroundColor: UIColor.appRaven]))
        self.likeCountText = text
    }

}
