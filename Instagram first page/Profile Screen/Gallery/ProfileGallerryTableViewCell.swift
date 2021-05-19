//
//  ProfileGallerryTableViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class ProfileGallerryTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionviewcell: UICollectionViewCell!
    private var model: [String]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        registerGalleryTableViewCell(collectionView: collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
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
