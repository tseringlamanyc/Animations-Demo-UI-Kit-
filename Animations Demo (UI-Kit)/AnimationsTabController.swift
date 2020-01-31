//
//  AnimationsTabController.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 1/31/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var sampleAnimation: SampleAnimationVC = {
       let vc = SampleAnimationVC()
        vc.tabBarItem = UITabBarItem(title: "Sample Animation", image: UIImage(systemName: "1.circle"), tag: 0)
        return vc
    }()
    
    private lazy var constraintAnimation: ConstraintAnimationVC = {
        let vc = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        guard let viewController = vc.instantiateViewController(identifier: "ConstraintAnimationVC") as? ConstraintAnimationVC else {
            fatalError()
        }
       viewController.tabBarItem = UITabBarItem(title: "Constraint Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set VC for the tab bar (2 tabs)
        viewControllers = [sampleAnimation, constraintAnimation]
    }
}
