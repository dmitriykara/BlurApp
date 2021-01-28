//
//  LoginViewController.swift
//  BlurApp
//
//  Created by Dmitriy Kara on 28.01.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var backgroundImageView:UIImageView!
    
    let imageSet = ["road", "mountain", "france", "forest"]
    
    var blurEffectView: UIVisualEffectView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let selectedImageIndex = Int(arc4random_uniform(4))
        
        backgroundImageView.image = UIImage(named: imageSet[selectedImageIndex])
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView?.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView!)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        blurEffectView?.frame = view.bounds
    }
}

