//
//  RecipeDetailViewController.swift
//  Fodamy
//
//  Created by AMBER ÇATALBAŞ on 18.03.2022.
//

import UIKit
import UIComponents

final class RecipeDetailViewController: BaseViewController<RecipeDetailViewModel> {

    var imageSliderView = ImageSliderView(viewModel: ImageSliderViewModel(cellItems: [ImageSliderCellModel(imageUrl: "", isEditorChoice: false)]))
    
    private let scrollView = UIScrollViewBuilder()
        .showsHorizontalScrollIndicator(false)
        .showsVerticalScrollIndicator(false)
        .alwaysBounceVertical(false)
        .build()
    private let contentStackView = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(15)
        .build()
    
    private let infoView = InfoCardView()
    private let countInfoStackView = UIStackViewBuilder()
        .axis(.horizontal)
        .spacing(1)
        .distribution(.fillEqually)
        .build()
    private let userCardView = UserCardView()
    private let ingredientsView = IngredientsView()
    private let stepsView = StepsView()
    private let commentsContainerView = UIViewBuilder()
        .backgroundColor(.appWhite)
        .build()
    private let commentsTitleLabel = UILabelBuilder()
        .font(.font(.nunitoBold, size: .xLarge))
        .textColor(.appCinder)
        .text(L10n.General.comments)
        .build()
    private let commentsSeparator = UIViewBuilder()
        .backgroundColor(.appZircon)
        .build()
   
    private let commentsCollectionView: DynamicHeightCollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        let width = UIScreen.main.bounds.size.width
        layout.estimatedItemSize = CGSize(width: width, height: 10)
        let collectionView = DynamicHeightCollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .appSecondaryBackground
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CommentCell.self)
        return collectionView
    }()
    
    private let commentButtonContainerView = UIViewBuilder()
        .backgroundColor(.clear)
        .build()
    private let commentButton = ButtonFactory.createPrimaryButton(style: .large)
    override func viewDidLoad() {
        super.viewDidLoad()
      
        configureContents()
        addSubViews()
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
        addScrollView()
        addContentStackView()
        addCommentsContainerView()
    }
    private func addScrollView() {
        view.addSubview(scrollView)
        scrollView.edgesToSuperview(excluding: .top)
        scrollView.topToSuperview(usingSafeArea: true)
    }
    
    private func addContentStackView() {
        scrollView.addSubview(contentStackView)
        contentStackView.widthToSuperview()
        contentStackView.edgesToSuperview()
        
        contentStackView.addArrangedSubview(imageSliderView)
        contentStackView.setCustomSpacing(0, after: imageSliderView)
        contentStackView.addArrangedSubview(infoView)
        contentStackView.setCustomSpacing(1, after: infoView)
        contentStackView.addArrangedSubview(userCardView)
        contentStackView.addArrangedSubview(ingredientsView)
        contentStackView.addArrangedSubview(stepsView)
        contentStackView.addArrangedSubview(commentsContainerView)
        contentStackView.addArrangedSubview(commentButtonContainerView)
        
        imageSliderView.aspectRatio(1)
    }
    
    private func addCommentsContainerView() {
        commentsContainerView.addSubview(commentsTitleLabel)
        commentsContainerView.addSubview(commentsSeparator)
        commentsContainerView.addSubview(commentsCollectionView)
        
        commentsTitleLabel.edgesToSuperview(excluding: .bottom, insets: .init(top: 11, left: 15, bottom: 11, right: 15))
        
        commentsSeparator.height(1)
        commentsSeparator.edgesToSuperview(excluding: [.top, .bottom])
        commentsSeparator.topToBottom(of: commentsTitleLabel).constant = 11
        
        commentsCollectionView.edgesToSuperview(excluding: .top)
        commentsCollectionView.topToBottom(of: commentsSeparator)
        
        commentButtonContainerView.addSubview(commentButton)
        commentButton.edgesToSuperview(insets: .init(top: 0, left: 15, bottom: 15, right: 15))
        commentButton.addTarget(self, action: #selector(commentButtonTapped), for: .touchUpInside)
    }

}

// MARK: - Configure and Set Localize
extension RecipeDetailViewController {
    
    private func configureContents() {
        view.backgroundColor = .appSecondaryBackground
        imageSliderView = ImageSliderView(viewModel: ImageSliderViewModel(cellItems: [ImageSliderCellModel(imageUrl: viewModel.recipe.images?[0].url ?? "", isEditorChoice: viewModel.recipe.isEditorChoice)]))
        ingredientsView.set(viewModel: IngredientsViewModel(ingredients: viewModel.recipe.ingredients, numberOfPerson: viewModel.recipe.numberOfPerson.text))
        infoView.set(viewModel: InfoCardViewModel(recipeName: viewModel.recipe.title,
                                                  categoryName: viewModel.recipe.category.name,
                                                  difference: viewModel.recipe.difference,
                                                  commentCount: viewModel.recipe.commentCount,
                                                  likeCount: viewModel.recipe.likeCount))
           stepsView.set(viewModel: StepsViewModel(directions: viewModel.recipe.directions, timeOfRecipe: viewModel.recipe.timeOfRecipe.text))
        userCardView.set(viewModel: UserCardViewModel(userId: viewModel.recipe.user.id ?? 0,
                                                      userImageUrl: viewModel.recipe.user.image?.url,
                                                      username: viewModel.recipe.user.username,
                                                      isfollowing: viewModel.recipe.user.isFollowing,
                                                      recipeCount: viewModel.recipe.user.recipeCount,
                                                      followingCount: viewModel.recipe.user.followingCount))
    }
    
    private func setLocalize() {
        commentButton.setTitle(L10n.General.addComment, for: .normal)
    }
    
}

// MARK: - Actions
extension RecipeDetailViewController {
    
    @objc
    private func infoButtonTapped() {
        viewModel.showInfo()
    }
    @objc
    private func commentButtonTapped() {
        viewModel.showInfo()
    }
}

