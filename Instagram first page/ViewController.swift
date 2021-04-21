//
//  ViewController.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 06.04.21.
//

import UIKit


struct cellData {
    
    let cell: Int!
    let label: String!
    let comment: String!
    let image: [String]
    
    init(cell: Int, label: String, comment: String, image: [String]) {
        
        self.cell = cell
        self.label = label
        self.comment = comment
        self.image = image
        
    }
    
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfCellData = [cellData]()
    
    private var firstVar = ["car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3"]
    private var secondVar = ["panda1", "panda2", "panda3","panda1", "panda2", "panda3","panda1", "panda2", "panda3","panda1", "panda2", "panda3"]
    private var thirdVar = ["cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3"]
    private var defVar = ["car1", "cat1", "panda1","car1", "cat1", "panda1","car1", "cat1", "panda1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [ cellData(cell:1, label: "This is first", comment: "Comment here...",image: firstVar),
                            cellData(cell:2, label: "This is first", comment: "Comment here...",image: secondVar),
                            cellData(cell:3, label: "This is first", comment: "Comment here...",image: thirdVar)]
                           
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView?.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "StoriesTableViewCell")
        tableView?.register(UINib(nibName: "ImagesTableViewCell", bundle: nil), forCellReuseIdentifier: "ImagesTableViewCell")
        
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as? StoriesTableViewCell
            cell?.configure(with: arrayOfCellData[indexPath.row].image)
            return cell ?? StoriesTableViewCell()
            
           }
        
        else if arrayOfCellData[indexPath.row].cell == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImagesTableViewCell", for: indexPath) as? ImagesTableViewCell
            cell?.configure(with: arrayOfCellData[indexPath.row].image)
            return cell ?? StoriesTableViewCell()
        }
        else if arrayOfCellData[indexPath.row].cell == 3  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImagesTableViewCell", for: indexPath) as? ImagesTableViewCell
            cell?.configure(with: arrayOfCellData[indexPath.row].image)
            return cell ?? StoriesTableViewCell()
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImagesTableViewCell", for: indexPath) as? ImagesTableViewCell
            cell?.configure(with: defVar)
            return cell ?? ImagesTableViewCell()
        
        
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1 {
            return 120
        }
        else {
            return 350
            
        }
    }

    
    

    
    
}




