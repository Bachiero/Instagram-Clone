//
//  GalleryCollectionViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {

    
    
    static let identifier = "GalleryCollectionViewCell"
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        
        return UINib(nibName: "GalleryCollectionViewCell", bundle: nil )
    }
    
  
    
    override func layoutSubviews() {
        super.layoutSubviews()
       
    }
    
    public func configure(with name: String) {

     
    }
    
   

}
