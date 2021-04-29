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
    let cell: String
    let type: StoryType
    
    init(cell: String, type: StoryType) {
        
        self.cell = cell
        self.type = type
    }
}

enum StoryType {
    
    case myStory
    case otherStory
}

var pictures: [StoryType: String] = [.myStory:"car1",.otherStory:"car2",.otherStory:"car3"]
