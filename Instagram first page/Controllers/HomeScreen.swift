//
//  ViewController.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 06.04.21.
//

import UIKit

class HomeScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfCellData = [CellData]()
    private var firstVar = ["car1", "car2", "car3","car1", "car2"]
    private var secondVar = ["panda1", "panda2", "panda3","panda1", "panda2"]
    private var thirdVar = ["cat1", "cat2", "cat3","cat1", "cat2"]
    private var otherVar = ["car1", "cat1", "panda1","car1", "cat1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [ CellData(type: .story, label: "Enzo_Ferrari", comment: "26 Likes",image: otherVar, postAuthor: #imageLiteral(resourceName: "car3")),
                            CellData(type: .post, label: "Bob_bob", comment: "93 Likes",image: firstVar, postAuthor: #imageLiteral(resourceName: "car1")),
                            CellData(type: .post, label: "Ray99", comment: "68 Likes",image: secondVar, postAuthor: #imageLiteral(resourceName: "cat2")),
                            CellData(type: .post , label: "Adriana_95", comment: "39 Likes",image: thirdVar, postAuthor: #imageLiteral(resourceName: "panda1"))]
        
        storyAuthorImages = [StoryData(image: otherVar, type: .myStory),
                             StoryData(image: firstVar, type: .otherStory),
                             StoryData(image: thirdVar, type: .otherStory),
                             StoryData(image: otherVar, type: .otherStory),
                             StoryData(image: firstVar, type: .otherStory),
                             StoryData(image: thirdVar, type: .otherStory),
                             StoryData(image: otherVar, type: .otherStory),
                             StoryData(image: firstVar, type: .otherStory)]
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView?.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        tableView?.register(UINib(nibName: "ImagesTableViewCell", bundle: nil), forCellReuseIdentifier: "ImagesTableViewCell")
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let type = arrayOfCellData[indexPath.row].type
        switch type {
        case .story:
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as? StoriesTableViewCell
            cell?.configure(with: storyAuthorImages[indexPath.row])
            return cell ?? StoriesTableViewCell()
            
        case .post:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImagesTableViewCell", for: indexPath) as? ImagesTableViewCell
            cell?.configure(with: arrayOfCellData[indexPath.row])
            return cell ?? ImagesTableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let type = arrayOfCellData[indexPath.row].type
        switch type {
        case .story:
            return 120
        case .post:
            return 480
            
        }
    }
}




