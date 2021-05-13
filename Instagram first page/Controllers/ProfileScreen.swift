//
//  ProfileViewController.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 09.05.21.
//

import UIKit

class ProfileScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ProfileName: UIButton!
    @IBOutlet weak var tableView: UITableView!
   
    var arrayOfCellData = [Gallery]()
    private var firstVar = ["car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3","car1", "car2", "car3"]
    private var secondVar = ["panda1", "panda2", "panda3","panda1", "panda2"]
    private var thirdVar = ["cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3","cat1", "cat2", "cat3"]
    private var otherVar = ["car1", "cat1", "panda1","car1", "cat1", "panda1","car1", "cat1", "panda1"]
    private var gallery = ["car1", "cat1", "panda1","panda1", "car2", "cat2","car3", "panda1","cat1", "cat2", "car3","panda1", "car2", "cat2","car3", "panda1","cat1" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [Gallery(cellType: .profileInfo, images: firstVar),
                           Gallery(cellType: .gallery, images: gallery)]
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        tableView.register(UINib(nibName: "ProfileInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileInfoTableViewCell")
        tableView.register(UINib(nibName: "ProfileGallerryTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileGallerryTableViewCell")
        ProfileName.setTitle("bacho_bitsadze ⌄", for: .normal)
        ProfileName.frame = CGRect(x: 0, y: 0, width: 30, height: 10)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let type = arrayOfCellData[indexPath.row].cellType
        switch type{
        case .gallery:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileGallerryTableViewCell", for: indexPath) as? ProfileGallerryTableViewCell
            cell?.configure(with: arrayOfCellData[indexPath.row].images)
            return cell ?? ProfileGallerryTableViewCell()
        case .profileInfo:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileInfoTableViewCell", for: indexPath) as? ProfileInfoTableViewCell
            return cell ?? ProfileInfoTableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let type = arrayOfCellData[indexPath.row].cellType
        switch type {
        case .profileInfo:
            return 400
        case .gallery:
            return UIScreen.main.bounds.height
        }
    }
}


   
