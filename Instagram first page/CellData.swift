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
