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
        imageView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        imageView.layer.cornerRadius = 50
        imageView.backgroundColor = .white
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.link.cgColor
        return imageView
    }()
    
    static func nib() -> UINib {
        
        return UINib(nibName: "CircleCollectionViewCell", bundle: nil )
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


class RectCollectionViewCell : UICollectionViewCell {
    
    
    static let identifier = "RectCollectionViewCell"
    
    @IBOutlet var myLabel: UITextView?
    
    private var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: 350, height: 350)
//        imageView.layer.cornerRadius = imageView.layer.frame.height/2
//        imageView.backgroundColor = .blue
        imageView.layer.borderWidth = 2
//        imageView.layer.borderColor = UIColor.link.cgColor
        
        
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

    
    //function for configure the cell with image, label, text, and comment. dont know how to make it yet..
    
//    public func configure(with model: cellData) {
//        self.myLabel.text = model.label
//        self.myImageView1.image =  UIImage(named: model.image)
//
//    }
    
}

