//
//  ImagesTableViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 12.04.21.
//

import UIKit

class ImagesTableViewCell: UITableViewCell,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    @IBOutlet weak var collectionView:  UICollectionView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var postAuthor: UIImageView!
    @IBOutlet weak var likeImageViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    private var model: [String]?
    
    // implementation of animations on doubleTap
    lazy var likeAnimator = LikaAnimator(container: contentView, layoutConstraint: likeImageViewWidthConstraint)
    lazy var doubleTapRecognizer: UITapGestureRecognizer = {
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        tapRecognizer.numberOfTapsRequired = 2
        return tapRecognizer
    }()
    // implementation of animations on singleTap
    lazy var singleTapRecognizer: UITapGestureRecognizer = {

        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        tapRecognizer.numberOfTapsRequired = 1
        return tapRecognizer
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // TODO: - მეთოდები შეეცადე რო იყოს მოკლე და გასაგები, ლოგიკურად დაყოფილი. დეკომპოზიცია სჭირდება ამ კლასს.
        registerPostTableViewCell(collectionView: collectionView)
        roundedPostAuthorImage(image: postAuthor)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.addGestureRecognizer(doubleTapRecognizer)
        likeButton.addGestureRecognizer(singleTapRecognizer)
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.selectionStyle = .none
    }
    
    func configure(with model: CellData) {

        self.model = model.image
        self.myLabel.text = model.likes
        self.author.text = model.PostAuthorNickname
        self.postAuthor.image = model.postAuthor
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pageControl.numberOfPages = model?.count ?? 0
        pageControl.isHidden = !( pageControl.numberOfPages > 1)
        return model?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = model else { return UICollectionViewCell() }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RectCollectionViewCell.identifier, for: indexPath) as! RectCollectionViewCell
        cell.configure(with: model[indexPath.row])
        return cell
    }

    // PageControl dots animation
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }

    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        pageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    @objc
    func didTap() {
        
        let isLiked = self.likeButton.isSelected
        if isLiked == false {
            likeAnimator.animate { [weak self] in
                self?.likeButton.tintColor = UIColor.systemPink
                self?.likeButton.isSelected = true
            }
        }
        else {
            likeAnimator.animate { [weak self] in
                self?.likeButton.tintColor = UIColor.black
                self?.likeButton.isSelected = false
            }
        }
    }
   
}

