//
//  FirstStoryCollectionViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 18.05.21.
//

import UIKit

class FirstStoryCollectionViewCell: UICollectionViewCell {

    static let identifier = "FirstCollectionViewCell"
    
    let addYourStoryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
        button.titleLabel?.text = "Post"
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .systemBlue
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 12.5
        button.layer.backgroundColor = UIColor.white.cgColor
        return button
    }()
    
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
        contentView.addSubview(addYourStoryButton)
        myImageView.layer.zPosition = -5;
        addYourStoryButton.layer.zPosition = 5;
//
        NSLayoutConstraint.activate([
            addYourStoryButton.leadingAnchor.constraint(equalTo: myImageView.leadingAnchor, constant: 60),
            addYourStoryButton.topAnchor.constraint(equalTo: myImageView.topAnchor, constant: 60),
            addYourStoryButton.widthAnchor.constraint(equalToConstant: 25),
            addYourStoryButton.heightAnchor.constraint(equalToConstant: 25)
            ])

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


