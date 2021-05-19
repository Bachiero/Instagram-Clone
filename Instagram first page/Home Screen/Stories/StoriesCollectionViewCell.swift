
//
//  CircleCollectionViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 21.04.21.
//

import UIKit

// TODO: ერთ ფაილში შეეცადე ორი კლასი არ მოაქციო ხოლმე. კოდი აღარა მერე კითხვადი.
class StoriesCollectionViewCell: UICollectionViewCell {

    // TODO: - შეეცადე ვიუს დასმისას არასდროს გამოიყენო ფრეიმები. ყოველთვის ყველა ვიუ დააფიქსირე contraint ებით, იშვიათი გამონაკლისების გარდა.
    let StoryAuthorNameLabel = UILabel(frame: CGRect(x: 0, y: 78, width: 80, height: 30))
    
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
        StoryAuthorNameLabel.text = name
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        // TODO: 49 ხაზზე კომენტარი ამასაც შეეხება და სხვა კლასებსაც.
        myImageView.frame = contentView.bounds
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        StoryAuthorNameLabel.text = "userName"
        StoryAuthorNameLabel.textColor = UIColor.black
        StoryAuthorNameLabel.font = UIFont(name:"chalkboard SE", size: 14)
        StoryAuthorNameLabel.textAlignment = NSTextAlignment.center
        contentView.addSubview(StoryAuthorNameLabel)
        contentView.addSubview(myImageView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
