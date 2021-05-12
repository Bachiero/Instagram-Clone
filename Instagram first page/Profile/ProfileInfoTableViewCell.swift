//
//  ProfileInfoTableViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class ProfileInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var posts: UILabel!
    @IBOutlet weak var followers: UILabel!
    @IBOutlet weak var following: UILabel!
    @IBOutlet weak var postsCount: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    @IBOutlet weak var postButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.image = #imageLiteral(resourceName: "car1")
        followers.text = "Followers"
        following.text = "Following"
        posts.text = "Posts"
        postsCount.text = "500"
        followersCount.text = "10259"
        followingCount.text = "324"
        
        postButton.layer.borderWidth = 1
        postButton.layer.borderColor = UIColor.white.cgColor
        postButton.layer.cornerRadius = 12.5
        postButton.layer.backgroundColor = UIColor.white.cgColor
        postButton.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        postButton.layer.borderWidth = 0.3
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.masksToBounds = true
        profileImage.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
        profileImage.layer.cornerRadius = 45
        self.selectionStyle = .none
        
  
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
}
