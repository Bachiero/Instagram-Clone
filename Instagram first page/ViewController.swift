//
//  ViewController.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 06.04.21.
//

import UIKit





class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfCellData = [CellData]()
    
    private var firstVar = ["car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3"]
    private var secondVar = ["panda1", "panda2", "panda3","panda1", "panda2", "panda3","panda1", "panda2", "panda3","panda1", "panda2", "panda3"]
    private var thirdVar = ["cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3"]
    private var otherVar = ["car1", "cat1", "panda1","car1", "cat1", "panda1","car1", "cat1", "panda1"]
    private var postAuthor1 = ["car1"]
    private var postAuthor2 = ["car3"]
    private var postAuthor3 = ["car2"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [ CellData(type: .story, label: "Pablo_Escobar", comment: "Liked by .... ",image: firstVar, postAuthor: #imageLiteral(resourceName: "car3")),
                            CellData(type: .post, label: "Maseratti_lover", comment: "Great look",image: secondVar, postAuthor: #imageLiteral(resourceName: "car1")),
                            CellData(type: .post, label: "Ray99", comment: "random comment",image: thirdVar, postAuthor: #imageLiteral(resourceName: "cat2")),
                            CellData(type: .post , label: "Adriana_95", comment: "yes, yes",image: otherVar, postAuthor: #imageLiteral(resourceName: "car3"))]
                           
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView?.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        tableView?.register(UINib(nibName: "ImagesTableViewCell", bundle: nil), forCellReuseIdentifier: "ImagesTableViewCell")
        
        
        
    }
    
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let type = arrayOfCellData[indexPath.row].type
        switch type {
        case .story:
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as? StoriesTableViewCell
            cell?.configure(with: arrayOfCellData[indexPath.row].image)
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
            return 450
            
        }
    }

    
}




