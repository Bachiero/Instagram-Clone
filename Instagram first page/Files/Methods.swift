//
//  Methods.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 19.05.21.
//

import Foundation
import UIKit


func registerPostTableViewCell(collectionView: UICollectionView) {
    
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: UIScreen.main.bounds.width , height: 400)
    layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    layout.minimumInteritemSpacing = 0
    layout.minimumLineSpacing = 0
    layout.scrollDirection = .horizontal
    
    collectionView.collectionViewLayout = layout
    collectionView.register(RectCollectionViewCell.self, forCellWithReuseIdentifier: RectCollectionViewCell.identifier)
    collectionView.showsHorizontalScrollIndicator = false
    collectionView.backgroundColor = .white
}


func registerStoriesTableViewCell(collectionView: UICollectionView) {
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: 85 , height: 85)
    layout.sectionInset = UIEdgeInsets(top: -15, left: 0, bottom: 0, right: 0)
    layout.scrollDirection = .horizontal
    collectionView.collectionViewLayout = layout
    collectionView.register(StoriesCollectionViewCell.self, forCellWithReuseIdentifier: StoriesCollectionViewCell.identifier)
    collectionView.register(FirstStoryCollectionViewCell.self, forCellWithReuseIdentifier: FirstStoryCollectionViewCell.identifier)
    collectionView.showsHorizontalScrollIndicator = false
    collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
}

func registerGalleryTableViewCell(collectionView: UICollectionView) {
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3, height: 120)
    layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    layout.minimumInteritemSpacing = 0
    layout.minimumLineSpacing = 0
    layout.scrollDirection = .vertical
    collectionView.collectionViewLayout = layout
    collectionView.register(ProfileGalleryCollectionViewCell.self, forCellWithReuseIdentifier: ProfileGalleryCollectionViewCell.identifier)
    collectionView.showsHorizontalScrollIndicator = false
    collectionView.backgroundColor = .white
}


func myPostButton(button: UIButton) {
    
button.layer.borderColor = UIColor.white.cgColor
button.layer.cornerRadius = 11
button.layer.backgroundColor = UIColor.white.cgColor
button.frame = CGRect(x: 0, y: 0, width: 22, height: 22)
button.layer.borderWidth = 1/2
}

func editProfile(button: UIButton) {
    button.frame = CGRect(x: 0, y: 0, width: 300, height: 30)
    button.layer.cornerRadius = 5
    button.layer.borderWidth = 0.5
    
}

func dropDown(button: UIButton) {
    
   button.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
   button.backgroundColor = UIColor.systemBlue
   button.layer.cornerRadius = 5
}


func myProfileImage(image: UIImageView) {
   image.clipsToBounds = true
   image.contentMode = .scaleAspectFill
   image.layer.masksToBounds = true
   image.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
   image.layer.cornerRadius = 45
}


extension UIImageView {
    
    func round(withRadius radius: CGFloat) {
        
        self.layer.borderWidth = 0
        self.layer.masksToBounds = false
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
    
}
