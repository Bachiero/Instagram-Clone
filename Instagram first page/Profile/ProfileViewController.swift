//
//  ProfileViewController.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ProfileName: UIButton!
    @IBOutlet weak var tableView: UITableView!
   
    
    var arrayOfCellData = [CellData]()
    private var firstVar = ["car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3"]
    private var secondVar = ["panda1", "panda2", "panda3","panda1", "panda2"]
    private var thirdVar = ["cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3"]
    private var otherVar = ["car1", "cat1", "panda1","car1", "cat1", "panda1","car1", "cat1", "panda1"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        arrayOfCellData = [ CellData(type: .story, label: "Enzo_Ferrari", comment: "26 Likes",image: otherVar, postAuthor: #imageLiteral(resourceName: "car3")),
                            CellData(type: .post, label: "Bob_bob", comment: "93 Likes",image: firstVar, postAuthor: #imageLiteral(resourceName: "car1")),
                            CellData(type: .post, label: "Ray99", comment: "68 Likes",image: secondVar, postAuthor: #imageLiteral(resourceName: "cat2")),
                            CellData(type: .post , label: "Adriana_95", comment: "39 Likes",image: thirdVar, postAuthor: #imageLiteral(resourceName: "panda1"))]
        
       
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        
        tableView.register(UINib(nibName: "ProfileGallerryTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileGallerryTableViewCell")
        tableView.register(UINib(nibName: "ProfileInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileInfoTableViewCell")
        
       
        ProfileName.setTitle("bacho_bitsadze ⌄", for: .normal)
        ProfileName.frame = CGRect(x: 0, y: 0, width: 30, height: 10)
        
       
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileGallerryTableViewCell", for: indexPath) as? ProfileGallerryTableViewCell
        cell?.configure(with: arrayOfCellData[indexPath.row].image)
            return cell ?? ProfileGallerryTableViewCell()
        }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 500
    }
    
    
}


   
