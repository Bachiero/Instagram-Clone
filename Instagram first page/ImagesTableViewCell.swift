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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width , height: 400)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.register(RectCollectionViewCell.self, forCellWithReuseIdentifier: RectCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        postAuthor.layer.borderWidth = 0
        postAuthor.layer.masksToBounds = false
        postAuthor.layer.cornerRadius = 17.5
        postAuthor.clipsToBounds = true
        self.selectionStyle = .none
        collectionView.addGestureRecognizer(doubleTapRecognizer)
        likeButton.addGestureRecognizer(singleTapRecognizer)
        
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    
    func configure(with model: CellData) {

        self.model = model.image
        self.myLabel.text = model.comment
        self.author.text = model.label
        self.postAuthor.image = model.postAuthor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
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
    
    @objc
    func didTap() {
        likeAnimator.animate { [weak self] in
            self?.likeButton.tintColor = UIColor.systemPink
            self?.likeButton.isSelected = true
        
        }
    }
}
