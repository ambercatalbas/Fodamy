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
        
    }
    
}

// MARK: - Actions
extension HomeViewController {
    
    
}
