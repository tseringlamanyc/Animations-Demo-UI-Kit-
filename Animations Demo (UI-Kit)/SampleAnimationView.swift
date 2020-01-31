//
//  SampleAnimationView.swift
//  Animations Demo (UI-Kit)
//
//  Created by Tsering Lama on 1/31/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class SampleAnimationView: UIView {
    
    public lazy var imageLogo: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
       return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupImage()
    }
    
    private func setupImage() {
        addSubview(imageLogo)
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageLogo.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            imageLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            imageLogo.heightAnchor.constraint(equalTo: imageLogo.heightAnchor)
        ])
    }
}
