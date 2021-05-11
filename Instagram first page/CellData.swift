//
//  CellData.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 22.04.21.
//
import UIKit
import Foundation

struct CellData {
    
    let type: CellType
    let label: String
    let comment: String
    let image: [String]
    let postAuthor: UIImage
    
    init(type: CellType, label: String, comment: String, image: [String], postAuthor: UIImage) {
        
        self.type = type
        self.label = label
        self.comment = comment
        self.image = image
        self.postAuthor = postAuthor
    }
}

enum CellType {
    
    case story
    case post
}



struct StoryData {
    let image: [String]
    let type: StoryType
    
    init(image: [String], type: StoryType) {
        
        self.image = image
        self.type = type
    }
}
var storyAuthorImages = [StoryData] ()

enum StoryType {
    
    case myStory
    case otherStory
}




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
