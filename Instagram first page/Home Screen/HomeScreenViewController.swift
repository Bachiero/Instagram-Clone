//
//  ViewController.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 06.04.21.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ახალი კლასის აწყობა, ორი ფუნქციით. ვიყენებ პროტოკოლს სეტერით, ქომფლიშენ ნაწილში მექნება ერეი. 
        
        //how to inject data to first viewcontroller? Google
        
        
        // TODO: შეეცადე დაამსგავსო ნამდვილ აპლიკაციას. როდესაც back არ გაქვს, უნდა დამოქო ბექი. viewController ში hard ად გაწერილ ცვლადებს ვერ დამოქავ. ნორმალური სტრუქტურა შეუქმენი და ეს ცვლადები გადმოეცი.
        arrayOfCellData = [ CellData(type: .story, PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: randomPictures, postAuthor: postAuthorLittleImageOne!),
                            CellData(type: .post, PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: carPictures, postAuthor: postAuthorLittleImageTwo!),
                            CellData(type: .post, PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: pandaPictures, postAuthor: postAuthorLittleImageThree!),
                            CellData(type: .post , PostAuthorNickname: nicknames.randomElement()!, likes: random(number: 1500),image: catPictures, postAuthor: postAuthorLittleImageFour!)]
        
        storyAuthorImages = [StoryData(image: randomPictures, type: .myStory),
                             StoryData(image: carPictures, type: .otherStory),
                             StoryData(image: catPictures, type: .otherStory),
                             StoryData(image: randomPictures, type: .otherStory),
                             StoryData(image: carPictures, type: .otherStory)]
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView?.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        tableView?.register(UINib(nibName: "ImagesTableViewCell", bundle: nil), forCellReuseIdentifier: "ImagesTableViewCell")
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }
    
}

extension HomeScreenViewController: UITableViewDelegate, UITableViewDataSource {

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

    // TODO: Constraint ები გაუწერე სწორად რომ autodimension ების აღება შეძლოს
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let type = arrayOfCellData[indexPath.row].type
//        switch type {
//        case .story:
//            return UITableView.automaticDimension
//        case .post:
//            return 480
//        }
//    }
}




