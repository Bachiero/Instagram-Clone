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
    private let storyAuthorName: [String] = ["Bobby", "Billy", "Jackson","Billie", "Michaele", "Javokhir", "Persey","Billy", "Jackson","Billie", "Michaele", "Javokhir", "Persey","Billy", "Jackson","Billie", "Michaele", "Javokhir", "Persey"]
  
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 85 , height: 85)
        layout.sectionInset = UIEdgeInsets(top: -15, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.register(CircleCollectionViewCell.self, forCellWithReuseIdentifier: CircleCollectionViewCell.identifier)
        collectionView.register(FirstCollectionViewCell.self, forCellWithReuseIdentifier: FirstCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
    }
    
    func configure(with model: StoryData) {
    
        self.model = model.image
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = model else { return UICollectionViewCell() }
 
        let type = storyAuthorImages[indexPath.row].type
        switch type {
        case .myStory:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCollectionViewCell.identifier, for: indexPath) as! FirstCollectionViewCell
            cell.configure(with: model[indexPath.row])
            return cell
        case .otherStory:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as! CircleCollectionViewCell
            cell.configure(with: model[indexPath.row])
            cell.configureAuthor(with: storyAuthorName[indexPath.row])
            return cell
            
        }
    }
}
