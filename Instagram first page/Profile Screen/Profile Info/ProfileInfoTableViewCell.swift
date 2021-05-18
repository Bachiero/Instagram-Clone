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
    @IBOutlet weak var editProfile: UIButton!
    @IBOutlet weak var dropDownButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // TODO: - Decompose
        profileImage.image = #imageLiteral(resourceName: "car1")
        followers.text = "Followers"
        following.text = "Following"
        posts.text = "Posts"
        postsCount.text = "500"
        followersCount.text = "10259"
        followingCount.text = "324"
        
        postButton.layer.borderColor = UIColor.white.cgColor
        postButton.layer.cornerRadius = 11
        postButton.layer.backgroundColor = UIColor.white.cgColor
        postButton.frame = CGRect(x: 0, y: 0, width: 22, height: 22)
        postButton.layer.borderWidth = 1/2
        
        editProfile.frame = CGRect(x: 0, y: 0, width: 300, height: 30)
        editProfile.layer.cornerRadius = 5
        editProfile.layer.borderWidth = 0.5
        
        dropDownButton.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        dropDownButton.backgroundColor = UIColor.systemBlue
        dropDownButton.layer.cornerRadius = 5
        
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
