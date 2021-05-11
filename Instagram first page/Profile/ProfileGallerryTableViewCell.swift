//
//  ProfileGallerryTableViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class ProfileGallerryTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    private var model: [String]?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100 , height: 100)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .vertical
        collectionView.collectionViewLayout = layout
        collectionView.register(ProfileGalleryCollectionViewCell.self, forCellWithReuseIdentifier: ProfileGalleryCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        
        self.selectionStyle = .none
        
    }

    func configure(with model: [String]) {

        self.model = model
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = model else { return UICollectionViewCell() }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileGalleryCollectionViewCell.identifier, for: indexPath) as! ProfileGalleryCollectionViewCell
        cell.configure(with: model[indexPath.row])
        return cell
    }
    
 
}
