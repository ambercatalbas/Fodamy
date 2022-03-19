//
//  RecipeDetailViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import UIKit

final class RecipeDetailViewController: BaseViewController<RecipeDetailViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        print(viewModel.recipe)
    }
    
}
