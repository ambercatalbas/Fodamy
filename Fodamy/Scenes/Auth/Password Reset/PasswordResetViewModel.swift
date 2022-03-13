//
//  PasswordResetViewModel.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 12.03.2022.
//

import Foundation

protocol PasswordResetViewDataSource {}

protocol PasswordResetViewEventSource {}

protocol PasswordResetViewProtocol: PasswordResetViewDataSource, PasswordResetViewEventSource {}

final class PasswordResetViewModel: BaseViewModel<PasswordResetRouter>, PasswordResetViewProtocol {
    
}
