//
//  IntroViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 9.03.2022.
//

import Foundation
import MobilliumUserDefaults

protocol IntroViewDataSource {
    func numberOfItemsAt(section: Int) -> Int
    func cellItemAt(indexPath: IndexPath) -> IntroCellProtocol
}

protocol IntroViewEventSource {}

protocol IntroViewProtocol: IntroViewDataSource, IntroViewEventSource {
    func didFinishIntro()
}

final class IntroViewModel: BaseViewModel<IntroRouter>, IntroViewProtocol {
    
    func didFinishIntro() {
        DefaultsKey.isIntroCompleted.value = true
        //        change after  tabbar route
        router.placeOnWindowMainTabBar()
        
    }
    
    
    func numberOfItemsAt(section: Int) -> Int {
        return cellItems.count
    }
    
    func cellItemAt(indexPath: IndexPath) -> IntroCellProtocol {
        return cellItems[indexPath.row]
    }
    
    private let cellItems: [IntroCellProtocol] = [
        IntroCellModel(image: .imgIntro1, titleText: L10n.Intro.firstTitle, descriptionText: L10n.Intro.descriptionText),
        IntroCellModel(image: .imgIntro2, titleText: L10n.Intro.secondTitle, descriptionText: L10n.Intro.descriptionText),
        IntroCellModel(image: .imgIntro3, titleText: L10n.Intro.thirdTitle, descriptionText: L10n.Intro.descriptionText),
        IntroCellModel(image: .imgIntro4, titleText: L10n.Intro.fourthTitle, descriptionText: L10n.Intro.descriptionText)]
    
}
