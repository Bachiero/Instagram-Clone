//
//  ProfileInfoTableViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class ProfileInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var third: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.image = #imageLiteral(resourceName: "car1")
        
        
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
}
