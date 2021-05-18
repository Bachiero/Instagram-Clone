//
//  Animations.swift
//  Instagram first page
//
//  Created by Bacho Bitsadze on 30.04.21.
//

import UIKit

class LikaAnimator {
    
   
    
  
    
    
    let container: UIView
    let layoutConstraint: NSLayoutConstraint
    
    init(container: UIView, layoutConstraint: NSLayoutConstraint) {
        
        self.container = container
        self.layoutConstraint = layoutConstraint
    }
    
    func animate(completion: @escaping () -> Void) {
        
        layoutConstraint.constant = 100
        UIView.animate(withDuration: 0.7,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 2,
                       options: .curveLinear,
                       animations: { [weak self] in
                        // TODO: - ანიმაცია სინქრონულია weak self არ გჭირდება
                        self?.container.layoutIfNeeded()
                        
                       })  { [weak self](_) in
            
            self?.layoutConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self?.container.layoutIfNeeded()
                completion()
            })
        }
    }
    
    
    
    
    
    
}
