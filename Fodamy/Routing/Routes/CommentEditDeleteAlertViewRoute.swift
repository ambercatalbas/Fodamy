//
//  CommentEditDeleteAlertViewRoute.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 30.03.2022.
//

import UIKit
import UIComponents

protocol CommentEditDeleteAlertViewRoute {
    func presentCommentEditDeleteAlertView(edit: VoidClosure?, delete: VoidClosure?)
}

extension CommentEditDeleteAlertViewRoute where Self: RouterProtocol {
    
    func presentCommentEditDeleteAlertView(edit: VoidClosure?, delete: VoidClosure?) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let edit = UIAlertAction(title: L10n.General.edit, style: .default) { _ in
            edit?()
        }
        let delete = UIAlertAction(title: L10n.General.delete, style: .destructive) { _ in
            delete?()
        }
        let cancel = UIAlertAction(title: L10n.General.cancel, style: .cancel, handler: nil)
        let transition = ModalTransition()
        
        alert.addAction(edit)
        alert.addAction(delete)
        alert.addAction(cancel)
        
        open(alert, transition: transition)
    }
}
