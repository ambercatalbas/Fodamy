//
//  FavoritesViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import UIKit
import UIComponents

final class FavoritesViewController: BaseViewController<FavoritesViewModel> {
    
    let fovoriteCardView = FavoriteCardView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureContents()
        setLocalize()
        
        subscribeViewModelEvents()
        
        
        
    }
    private func subscribeViewModelEvents() {
        viewModel.didSuccessFetchRecipes = { [weak self] in
            guard let self = self else { return }
            self.fovoriteCardView.set(viewModel: FavoriteCardViewModel(recipe: self.viewModel.recipe!))
        }
    }
}

// MARK: - UILayout
extension FavoritesViewController {
    
    private func addSubViews() {
//        view.addSubview(fovoriteCardView)
//        fovoriteCardView.centerInSuperview()
//        fovoriteCardView.width(150)
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
