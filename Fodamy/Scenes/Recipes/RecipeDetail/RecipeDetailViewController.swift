//
//  RecipeDetailViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import UIKit
import UIComponents

final class RecipeDetailViewController: BaseViewController<RecipeDetailViewModel> {
    
    private let infoView = InfoCardView()
    private let ingredientsView = IngredientsView()
    private let stepsView = StepsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        print(viewModel.recipe)
        
        
        addSubViews()
        configureContents()
        setLocalize()
        setInfoButtonAction()
        
    }
    private func setInfoButtonAction() {
        infoView.infoButtonTapped = { [weak self] in
            guard let self = self else { return }
            self.infoButtonTapped()
        }
    }
}

// MARK: - UILayout
extension RecipeDetailViewController {
    
    private func addSubViews() {
        view.addSubview(infoView)
        infoView.topToSuperview().constant = 20
        infoView.leftToSuperview()
        infoView.rightToSuperview()
        infoView.set(viewModel: InfoCardViewModel(recipeName: viewModel.recipe.title,
                                                  categoryName: viewModel.recipe.category.name,
                                                  difference: viewModel.recipe.difference,
                                                  commentCount: viewModel.recipe.commentCount,
                                                  likeCount: viewModel.recipe.likeCount))
        view.addSubview(ingredientsView)
        ingredientsView.topToBottom(of: infoView).constant = 10
        ingredientsView.leftToSuperview()
        ingredientsView.rightToSuperview()
        ingredientsView.set(viewModel: IngredientsViewModel(ingredients: viewModel.recipe.ingredients, numberOfPerson: viewModel.recipe.numberOfPerson.text))
        
        view.addSubview(stepsView)
        stepsView.topToBottom(of: ingredientsView).constant = 10
        stepsView.leftToSuperview()
        stepsView.rightToSuperview()
        stepsView.set(viewModel: StepsViewModel(directions: viewModel.recipe.directions, timeOfRecipe: viewModel.recipe.timeOfRecipe.text))
        
    }
    

}

// MARK: - Configure and Set Localize
extension RecipeDetailViewController {
    
    private func configureContents() {

    }
    
    private func setLocalize() {
        
    }
    
}

// MARK: - Actions
extension RecipeDetailViewController {
    
    @objc
    private func infoButtonTapped() {
        viewModel.showInfo()
    }
}

