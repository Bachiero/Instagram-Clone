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
    let PostAuthorNickname: String
    let likes: String
    let image: [String]
    let postAuthor: UIImage
    
    init(type: CellType, PostAuthorNickname: String, likes: String, image: [String], postAuthor: UIImage) {
        
        self.type = type
        self.PostAuthorNickname = PostAuthorNickname
        self.likes = likes
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

enum StoryType {
    
    case myStory
    case otherStory
}




// TODO: - მიუხედავად იმისა რო ბექი არ არის, data გადმოაწოდე ყოველთვის გარედან, cell ის გამოყენება ყველგან უნდა შეგეძლოს მიუხედავად data სი.
let storyAuthorName: [String] = ["Bobby", "Billy", "Jackson","Billie", "Michaele", "Javokhir", "Persey","Billy", "Jackson","Billie", "Michaele", "Javokhir", "Persey","Billy", "Jackson","Billie", "Michaele", "Javokhir", "Persey"]
