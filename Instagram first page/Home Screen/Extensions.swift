//
//  Extensions.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 18.05.21.
//

import Foundation
import UIKit


extension UITableViewCell {
    
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
            return cell ?? StoriesTableViewCell()
        }
    }
}



