//
//  HomeViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import Foundation

protocol HomeViewDataSource {
    var segmentedControlTitles: [String] { get }
    var selectedSegmentIndex: Int { get }

}

protocol HomeViewEventSource {}

protocol HomeViewProtocol: HomeViewDataSource, HomeViewEventSource {

}

final class HomeViewModel: BaseViewModel<HomeRouter>, HomeViewProtocol {
    var selectedSegmentIndex: Int = 0
    var segmentedControlTitles: [String] = [L10n.Home.editorChoiceRecipes,
                                            L10n.Home.lastAddedRecipes]
   
}
