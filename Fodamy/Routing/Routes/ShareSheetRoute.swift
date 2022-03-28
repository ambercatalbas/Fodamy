//
//  ShareSheetRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 28.03.2022.
//

import UIKit

protocol ShareSheetRoute {
    func presentShareSheet(items: [Any])
}

extension ShareSheetRoute where Self: RouterProtocol {
    
    func presentShareSheet(items: [Any]) {
        let shareSheetController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        let transition = ModalTransition()
        
        open(shareSheetController, transition: transition)
    }
}
