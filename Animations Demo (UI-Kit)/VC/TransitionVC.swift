//
//  TransitionVC.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 2/4/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class TransitionVC: UIViewController {
    
    @IBOutlet weak var kaisa: UIImageView!
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate))
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kaisa.image = UIImage(named: "kaisa")
        view.backgroundColor = .systemRed
        
        // enable user interaction on the image view or label as those 2 UI elements are set to false by default
        kaisa.isUserInteractionEnabled = true
        
        // add gesture
        kaisa.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func animate() {
        let duration: Double = 1.5
        let curveOption: UIView.AnimationOptions = .curveEaseInOut
        if kaisa.image == UIImage(named: "kaisa") {
            UIView.transition(with: kaisa, duration: duration, options: [.transitionFlipFromRight, curveOption], animations: {
                self.kaisa.image = UIImage(named: "jhin")
            }, completion: nil)
        } else {
            UIView.transition(with: kaisa, duration: duration, options: [.transitionFlipFromRight, curveOption], animations: {
                self.kaisa.image = UIImage(named: "kaisa")
            }, completion: nil)
        }
    }
}
