//
//  HomeViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import Foundation

protocol HomeViewDataSource {}

protocol HomeViewEventSource {}

protocol HomeViewProtocol: HomeViewDataSource, HomeViewEventSource {
    func showLogin()

}

final class HomeViewModel: BaseViewModel<HomeRouter>, HomeViewProtocol {
    func showLogin() {
        router.presentLogin()
    }
    
}
