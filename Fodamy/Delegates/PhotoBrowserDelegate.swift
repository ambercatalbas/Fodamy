//
//  PhotoBrowserDelegate.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 26.03.2022.
//

import SKPhotoBrowser

final class PhotoBrowserDelegate: SKPhotoBrowserDelegate {

    var willDismissAtPage: IntClosure?

    func willDismissAtPageIndex(_ index: Int) {
        if let didDismiss = willDismissAtPage {
            didDismiss(index)
        }
    }
    
}
