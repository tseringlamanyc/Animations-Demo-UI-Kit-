//
//  SampleAnimationVC.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 1/31/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class SampleAnimationVC: UIViewController {
    
    private let sampleAnimationView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scaleAnimation()
    }
    
    private func scaleAnimation() {
        UIView.animate(withDuration: 2.0) {
            self.sampleAnimationView.imageLogo.transform = CGAffineTransform(scaleX: 2, y: 3)
            self.sampleAnimationView.imageLogo.alpha = 0.0
        }
    }
}
