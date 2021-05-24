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
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var dropDownButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImage.image = myProfileImage
        followers.text = myFollowers
        following.text = meFollowing
        posts.text = myPosts
        postsCount.text = myPostsCount
        followersCount.text = myFollowersCount
        followingCount.text = meFollowingCount
        
        myPostButton(button: postButton)
        editProfile(button: editProfileButton)
        dropDown(button: dropDownButton)
        myProfileImage(image: profileImage)
        
        self.selectionStyle = .none
    }

}
