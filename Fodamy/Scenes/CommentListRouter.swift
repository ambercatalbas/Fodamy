//
//  CommentListRouter.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 29.03.2022.
//

final class CommentListRouter: Router, CommentListRouter.Routes {
    typealias Routes =
    LoginWarningPopupRoute &
    LoginRoute &
    CommentEditDeleteAlertViewRoute &
    CommentEditRoute
}
