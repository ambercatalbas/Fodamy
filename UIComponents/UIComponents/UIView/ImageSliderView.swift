//
//  imageSliderView.swift
//  UIComponents
//
//  Created by AMBER ÇATALBAŞ on 21.03.2022.
//

import UIKit

public class ImageSliderView: UIView {
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ImageSliderCell.self)
        return collectionView
    }()
    private let pageControl = UIPageControlBuilder()
        .pageIndicatorTintColor(UIColor.appRed.withAlphaComponent(0.3))
        .currentPageIndicatorTintColor(.appRed)
        .build()
    var imageSliderData: [ImageSliderCellProtocol] = [] {
        didSet {
            collectionView.reloadData()
            pageControl.numberOfPages = imageSliderData.count
            pageControl.isHidden = pageControl.numberOfPages == 1
        }
    }
    weak var viewModel: ImageSliderViewProtocol? {
        didSet {
            collectionView.reloadData()
            pageControl.numberOfPages = imageSliderData.count
            pageControl.isHidden = pageControl.numberOfPages == 1
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
        addSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureContents()
        addSubViews()
    }
    
}
// MARK: - UILayout
extension ImageSliderView {
    
    private func addSubViews() {
        addSliderCollectionView()
        addPageControl()
    }
    
    private func addSliderCollectionView() {
        addSubview(collectionView)
        collectionView.edgesToSuperview()
    }
    private func addPageControl() {
        addSubview(pageControl)
        pageControl.bottom(to: collectionView)
        pageControl.centerX(to: collectionView)
        
    }
    
}

// MARK: - Configure and SetLocalize
extension ImageSliderView {
    
    private func configureContents() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    public func set(viewModel: ImageSliderViewProtocol) {
        self.viewModel = viewModel
        
    }
}

// MARK: - UIScrollViewDelegate
extension ImageSliderView {
    
    public func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let width = UIScreen.main.bounds.width
        let xPoint = targetContentOffset.pointee.x
        let pageIndex = Int(xPoint / width)
        pageControl.currentPage = pageIndex
    }

}

// MARK: - UICollectionViewDataSource
extension ImageSliderView: UICollectionViewDataSource {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.cellItems.count ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ImageSliderCell = collectionView.dequeueReusableCell(for: indexPath)
        let cellItem = viewModel?.cellItems[indexPath.row]
        cell.set(viewModel: cellItem!)
        return cell
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ImageSliderView: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        return CGSize(width: width, height: width)
    }
    
}

// MARK: - UIScrollViewDelegate
extension ImageSliderView {
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
}
