//
//  MockData.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 24.05.21.
//

import UIKit

class mockManager: dummyData {
    
    var arrayOfCellData: Array<Any> = [[ CellData(type: .story, PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: randomPictures, postAuthor: postAuthorLittleImageOne!),
                                         CellData(type: .post, PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: carPictures, postAuthor: postAuthorLittleImageTwo!),
                                         CellData(type: .post, PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: pandaPictures, postAuthor: postAuthorLittleImageThree!),
                                         CellData(type: .post , PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: catPictures, postAuthor: postAuthorLittleImageFour!)]]
    
    
    var storyAuthorImages: Array<Any> = [[StoryData(image: randomPictures, type: .myStory),
                                          StoryData(image: carPictures, type: .otherStory),
                                          StoryData(image: catPictures, type: .otherStory),
                                          StoryData(image: randomPictures, type: .otherStory),
                                          StoryData(image: carPictures, type: .otherStory)]]
    
}



protocol dummyData {
    
    var arrayOfCellData: Array<Any> {get set}
    var storyAuthorImages: Array<Any> {get set}
    
    
}

