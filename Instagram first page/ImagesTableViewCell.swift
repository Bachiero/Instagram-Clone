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
    
    private var model: [String]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 360 , height: 320)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.register(RectCollectionViewCell.self, forCellWithReuseIdentifier: RectCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        postAuthor.layer.borderWidth = 1.0
        postAuthor.layer.masksToBounds = false
        postAuthor.layer.borderColor = UIColor.systemPink.cgColor
        postAuthor.layer.cornerRadius = 20
        postAuthor.clipsToBounds = true
        
        collectionView.addGestureRecognizer(doubleTapRecognizer)
        likeButton.addGestureRecognizer(singleTapRecognizer)
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
        return model?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = model else { return UICollectionViewCell() }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RectCollectionViewCell.identifier, for: indexPath) as! RectCollectionViewCell
        cell.configure(with: model[indexPath.row])
        return cell
    }
    
    
    
    
    
    // implementation of animations on doubleTap
    lazy var likeAnimator = LikaAnimator(container: contentView, layoutConstraint: likeImageViewWidthConstraint)
    lazy var doubleTapRecognizer: UITapGestureRecognizer = {
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        tapRecognizer.numberOfTapsRequired = 2
        return tapRecognizer
    }()
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
