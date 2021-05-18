//
//  FirstStoryCollectionViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 18.05.21.
//

import UIKit

class FirstStoryCollectionViewCell: UICollectionViewCell {

    static let identifier = "FirstCollectionViewCell"
    
    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
        imageView.layer.cornerRadius = 42.5
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.clear.cgColor
        return imageView
    }()

    public func configure(with name: String) {
        myImageView.image = UIImage(named: name)
    }
    
    static func nib() -> UINib {

        return UINib(nibName: "FirstCollectionViewCell", bundle: nil )
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 78, width: myImageView.frame.width - 10, height: 30))
        titleLabel.text = "Your Story"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont(name:"chalkboard SE", size: 14)
        titleLabel.textAlignment = NSTextAlignment.center
        contentView.addSubview(titleLabel)
        contentView.addSubview(myImageView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


