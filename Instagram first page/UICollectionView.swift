//
//  UiCollectionView.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 28.04.21.
//

import UIKit

class MyCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    private var model: [String]?
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    
    
    
    
    
    
    
    
  
    
    
    func configure(with model: [String]) {
    
        self.model = model
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = model else { return UICollectionViewCell() }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as! CircleCollectionViewCell
        cell.configure(with: model[indexPath.row])
        return cell
    }
    


    
    
}
