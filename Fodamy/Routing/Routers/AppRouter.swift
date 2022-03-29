//
//  AppRouter.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import Foundation
import UIKit
import MobilliumUserDefaults

final class AppRouter: Router, AppRouter.Routes {
    
    typealias Routes = MainTabBarRoute & IntroRoute & SKPhotoBrowserRoute
    
    static let shared = AppRouter()
    
    func startApp() {
        if DefaultsKey.isIntroCompleted.value == true {
            placeOnWindowMainTabBar()
        } else {
            placeOnWindowIntro()
        }
    }
    
    func presentSKPhotoBrowser(with photos: [String], delegate: PhotoBrowserDelegate, initialPageIndex: Int = 0) {
        guard let topVC = topViewController() else { return }
        presentSKPhotoBrowser(with: photos, viewController: topVC, initialPageIndex: initialPageIndex, delegate: delegate)
    }
    
    private func topViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        if var topController = keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        return nil

    }
    
}
