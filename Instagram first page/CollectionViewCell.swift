//
//  CircleCollectionViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 21.04.21.
//

import UIKit


class CircleCollectionViewCell: UICollectionViewCell {

    static let identifier = "CircleCollectionViewCell"
    
    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
        imageView.layer.cornerRadius = 42.5
        imageView.backgroundColor = .white
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.systemPink.cgColor
        
        return imageView
    }()
    
    public func configure(with name: String) {
        myImageView.image = UIImage(named: name)
       
    }
    
    static func nib() -> UINib {

        return UINib(nibName: "CircleCollectionViewCell", bundle: nil )
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
        
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(myImageView)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

class FirstCollectionViewCell: UICollectionViewCell {

    static let identifier = "FirstCollectionViewCell"

    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
        imageView.layer.cornerRadius = 42.5
        imageView.backgroundColor = .white
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        
        
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

        contentView.addSubview(myImageView)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

class RectCollectionViewCell : UICollectionViewCell {
    
    static let identifier = "RectCollectionViewCell"
    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 350, height: 350)
        imageView.layer.borderWidth = 2
        return imageView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        
        return UINib(nibName: "RectCollectionViewCell", bundle: nil )
    }
    
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
