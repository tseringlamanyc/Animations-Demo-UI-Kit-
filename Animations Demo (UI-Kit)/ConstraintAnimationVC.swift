//
//  ConstraintAnimationVC.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 1/31/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class ConstraintAnimationVC: UIViewController {
    
    @IBOutlet weak var boxYConstraints: NSLayoutConstraint!
    
    @IBOutlet weak var boxView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        boxView.layer.cornerRadius = boxView.frame.size.height / 2
    }
    
    
    @IBAction func upButton(_ sender: UIButton) {
        // animate Button
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0, options: [], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (done) in
            sender.transform = CGAffineTransform.identity
        }
        
        // Outlet to the box
         print(boxView.frame.origin.y)
        if boxView.frame.origin.y < 100 {return}
        
        boxYConstraints.constant -= 100
    
        // determine if view.frame.origin.y == 0 {return}
        
        // when we change the constraints in iOS and we need this change to be animated we only nned to animate
        // self.view.layoutIfNeeded and the animation will take place
        // layoutIfNeeded will get called as the view is marked "dirty" by iOS, we implmenting self.view.layoutIFNeeded in the animation block will cause the animation
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 20.0, options: [.curveEaseIn], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func downButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0, options: [], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (done) in
            sender.transform = CGAffineTransform.identity
        }
        
        print(boxView.frame.origin.y)
        if boxView.frame.origin.y > 500 {return}
        
         boxYConstraints.constant += 100

        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 20.0, options: [.curveEaseOut], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}
