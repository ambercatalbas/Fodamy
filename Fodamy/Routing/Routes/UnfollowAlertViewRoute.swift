//
//  UnfollowAlertViewRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 26.03.2022.
//

import UIKit

protocol UnfollowAlertViewRoute {
    func presentUnfollowAlertView(unFollowAction: VoidClosure?)
}

extension UnfollowAlertViewRoute where Self: RouterProtocol {
    
    func presentUnfollowAlertView(unFollowAction: VoidClosure?) {
        let transition = ModalTransition()
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let unFollowAction = UIAlertAction(title: L10n.General.unfollow, style: .destructive) {_ in
            unFollowAction?()
        }
        let dismissAction = UIAlertAction(title: L10n.General.cancel, style: .cancel, handler: nil)
        
        alert.addAction(unFollowAction)
        alert.addAction(dismissAction)
        
        open(alert, transition: transition)
    }
}
