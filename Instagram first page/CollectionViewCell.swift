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
        imageView.layer.borderWidth = 1.5
        imageView.layer.borderColor = UIColor.systemPink.cgColor
        return imageView
    }()
    
    public func configure(with name: String) {
        myImageView.image = UIImage(named: name)
        
    }
    
    public func configureAuthor(with name: String){
        titleLabel.text = name
    }
    
    static func nib() -> UINib {

        return UINib(nibName: "CircleCollectionViewCell", bundle: nil )
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
        
    }

    let titleLabel = UILabel(frame: CGRect(x: 0, y: 78, width: 80, height: 30))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel.text = "userName"
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

class FirstCollectionViewCell: UICollectionViewCell {

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


class ProfileGalleryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ProfileGalleryCollectionViewCell"
    
    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 120)
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        
        return UINib(nibName: "ProfileGalleryCollectionViewCell", bundle: nil )
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
    
    public func configure(with name: String) {

        myImageView.image = UIImage(named: name)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myImageView)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
