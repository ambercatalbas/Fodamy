//
//  RegisterViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 12.03.2022.
//

import Foundation

protocol RegisterViewDataSource {}

protocol RegisterViewEventSource {}

protocol RegisterViewProtocol: RegisterViewDataSource, RegisterViewEventSource {}

final class RegisterViewModel: BaseViewModel<RegisterRouter>, RegisterViewProtocol {
    
}
