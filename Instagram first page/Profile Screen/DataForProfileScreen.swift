//
//  DataForProfileScreen.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 18.05.21.
//

import UIKit
import Foundation

// Profile page

enum ProfileCell {
    
    case profileInfo
    case gallery
}

struct Gallery {
    
    let cellType: ProfileCell
    let images: [String]
    
    init(cellType: ProfileCell, images: [String]) {
        
        self.cellType = cellType
        self.images = images
    }
}



