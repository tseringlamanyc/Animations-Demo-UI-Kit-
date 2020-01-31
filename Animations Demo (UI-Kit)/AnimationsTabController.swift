//
//  AnimationsTabController.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 1/31/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set VC for the tab bar (2 tabs)
        viewControllers = [SampleAnimationVC(), ConstraintAnimationVC()]
    }
}
