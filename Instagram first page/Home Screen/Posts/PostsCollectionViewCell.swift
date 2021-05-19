//
//  PostsCollectionViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 19.05.21.
//


import UIKit

class RectCollectionViewCell : UICollectionViewCell {
    
    static let identifier = "RectCollectionViewCell"
    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 360, height: 400)
        imageView.layer.borderWidth = 0
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
    
    public func configure(with name: String) {
        myImageView.image = UIImage(named: name)
    }
}
