//
//  FavoritesViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import UIKit

final class FavoritesViewController: BaseViewController<FavoritesViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureContents()
        setLocalize()
        
    }
    
}

// MARK: - UILayout
extension FavoritesViewController {
    
    private func addSubViews() {
    }
    

}

// MARK: - Configure and Set Localize
extension FavoritesViewController {
    
    private func configureContents() {
        title = "favorites"

    }
    
    private func setLocalize() {
        
    }
    
}

// MARK: - Actions
extension FavoritesViewController {
    
    
}
