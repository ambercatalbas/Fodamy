//
//  HomeViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 14.03.2022.
//

import UIKit
import MobilliumBuilders
import TinyConstraints
import Segmentio

final class HomeViewController: BaseViewController<HomeViewModel> {
    
    private let logoView = LogoView()
    private let segmentView = Segmentio()
    
    private let userView = FoodCardView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureContents()
        setLocalize()
        
    }
    
}

// MARK: - UILayout
extension HomeViewController {
    
    private func addSubViews() {
        addSegmentView()
        
        view.addSubview(userView)
        userView.topToBottom(of: segmentView).constant = 10
        userView.leftToSuperview()
        userView.rightToSuperview()
        
        
    }
    
    private func addSegmentView() {
        view.addSubview(segmentView)
        segmentView.edgesToSuperview(excluding: .bottom, usingSafeArea: true)
        segmentView.height(46)
    }
    
}

// MARK: - Configure and Set Localize
extension HomeViewController {
    
    private func configureContents() {
        navigationItem.titleView = logoView
        segmentView.setup(content: [SegmentioItem(title: viewModel.segmentedControlTitles[0], image: nil),
                                    SegmentioItem(title: viewModel.segmentedControlTitles[1], image: nil)], style: .onlyLabel, options: .options())
        segmentView.selectedSegmentioIndex = 0
    }
    
    private func setLocalize() {
        userView.set(viewModel: FoodCardViewModel(userId: 28,
                                           userImageUrl: "https://fodamy.mobillium.com/images/3c4f17ca-1e63-4236-ae08-1a5d5e3cd793.jpg",
                                           username: "ahmeti",
                                           followingCount: 1,
                                           recipeCount: 2,
                                           recipeTitle: "Tarhana Çorbası",
                                           recipeCategoryName: "sıcak çorbalar",
                                           recipeImageUrl: "https://fodamy.mobillium.com/images/60b0be39-5534-48eb-a8ec-3b8741380182.jpg",
                                           likeCount: 3,
                                           commentCount: 1,
                                           isEditorChoice: true))
//        userView.set(viewModel: UserCardViewModel(userId: 1,
//                                                  userImageUrl: "https://fodamy.mobillium.com/images/454ea7c3-aefb-4c76-aee4-a140a71b5834.jpg",
//                                                  username: "mrtçelebi",
//                                                  isfollowing: false,
//                                                  recipeCount: 22,
//                                                  followingCount: 8))
        
    }
    
}

// MARK: - Actions
extension HomeViewController {
    
    
}
