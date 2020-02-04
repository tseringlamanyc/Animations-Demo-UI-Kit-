//
//  PropertyAnimatorVC.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 2/4/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class PropertyAnimatorVC: UIViewController {
    
    @IBOutlet weak var yasuo: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    // instance of UIViewPropertyAnimator
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // instantitate the animator property
        animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut, animations: {
            // code for animation
            self.yasuo.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        })
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
}
