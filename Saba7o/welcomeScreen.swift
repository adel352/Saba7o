//
//  ViewController.swift
//  Saba7o
//
//  Created by Adel Araji on 2018-06-08.
//  Copyright © 2018 Adel Araji. All rights reserved.
//

import UIKit
import Lottie

class welcomScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let animationView = LOTAnimationView(name: "servishero_loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        view.addSubview(animationView)
        
        animationView.play()
        
    }
    
    
}

