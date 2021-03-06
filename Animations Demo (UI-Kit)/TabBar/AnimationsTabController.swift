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
    
    private lazy var transitionAnimation: TransitionVC = {
       let vc = UIStoryboard(name: "Transition", bundle: nil)
        guard let viewcontroller = vc.instantiateViewController(identifier: "TransitionVC") as? TransitionVC else {
            fatalError()
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Transition", image: UIImage(systemName: "3.circle"), tag: 2)
        return viewcontroller
    }()
    
    private lazy var propertyAnimator: PropertyAnimatorVC = {
       let vc = UIStoryboard(name: "PropertyAnimator", bundle: nil)
        guard let viewcontroller = vc.instantiateViewController(identifier: "PropertyAnimatorVC") as? PropertyAnimatorVC else {
            fatalError()
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Property Animator", image: UIImage(systemName: "4.circle"), tag: 3)
        return viewcontroller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set VC for the tab bar (2 tabs)
        viewControllers = [sampleAnimation, constraintAnimation, transitionAnimation, propertyAnimator]
    }
}
