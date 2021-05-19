//
//  StoriesTableViewCell.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 08.04.21.
//

import UIKit

class StoriesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView:  UICollectionView!
    private var model: [String]?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        registerStoriesTableViewCell(collectionView: collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func configure(with model: StoryData) {
    
        self.model = model.image
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = model else { return UICollectionViewCell() }
 
        let type = storyAuthorImages[indexPath.row].type
        switch type {
        case .myStory:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstStoryCollectionViewCell.identifier, for: indexPath) as! FirstStoryCollectionViewCell
            cell.configure(with: model[indexPath.row])
            return cell
        case .otherStory:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoriesCollectionViewCell.identifier, for: indexPath) as! StoriesCollectionViewCell
            cell.configure(with: model[indexPath.row])
            cell.configureAuthor(with: storyAuthorName[indexPath.row])
            return cell
            
        }
    }
}
