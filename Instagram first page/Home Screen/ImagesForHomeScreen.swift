//
//  ImagesForHomeScreen.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 18.05.21.
//

import Foundation
import UIKit

//MARK variable for Posts images
var arrayOfCellData = [CellData]()

//MARK variable for Stories images (postButton or other story)
var storyAuthorImages = [StoryData] ()

// TODO: ცვლადებს გარჩევადი სახელები დაარქვი რო სხვისთვისაც გასაგები იყოს რა არის
 var carPictures = ["car1", "car2", "car3","car1", "car2"]
 var pandaPictures = ["panda1", "panda2", "panda3","panda1", "panda2"]
 var catPictures = ["cat1", "cat2", "cat3","cat1", "cat2"]
 var randomPictures = ["car1", "cat1", "panda1","car1", "cat1"]


var nicknames = ["Bob_Bobby", "JohnyCage","Alfa-Romeo", "Billy", "Don","Superglue","Enzo77","Ray2b","Adriana"]
var nickname = nicknames.randomElement()

let likesCounter = Int.random(in: 0..<1500)
let likes = " Likes"

let postAuthorLittleImageOne = UIImage(named: randomPictures[Int.random(in: 0...4)])
let postAuthorLittleImageTwo = UIImage(named: randomPictures[Int.random(in: 0...4)])
let postAuthorLittleImageThree = UIImage(named: randomPictures[Int.random(in: 0...4)])
let postAuthorLittleImageFour = UIImage(named: randomPictures[Int.random(in: 0...4)])
let postAuthorLittleImageFive = UIImage(named: randomPictures[Int.random(in: 0...4)])

func random(number: Int) -> String {
    let randomNumber = String(Int.random(in: 0..<number))
    return randomNumber + likes
}
