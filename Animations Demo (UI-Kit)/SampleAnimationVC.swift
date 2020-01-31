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
       // pulsateAnimation()
    }
  
    private func scaleAnimation() {
        // alpha, corner radius, position, center, transition, color, shadow, opacity
        // transform: scale, rotate, translate
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.sampleAnimationView.imageLogo.transform = CGAffineTransform(scaleX: 2, y: 3)
            self.sampleAnimationView.imageLogo.alpha = 0.0
        }) { (done) in
            UIView.animate(withDuration: 1.0) {
                self.sampleAnimationView.swiftLogo.isHidden = false
                self.sampleAnimationView.swiftLogo.layer.cornerRadius = self.sampleAnimationView.swiftLogo.bounds.size.width / 2.0
            }
        }
    }
    
    private func pulsateAnimation() {
        UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat], animations: {
            // animation block
            self.sampleAnimationView.imageLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            // executed after animation is done
            // use animateKeyFrames for chaining animations"
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationView.imageLogo.transform = CGAffineTransform.identity
            }
        }
    }
}
