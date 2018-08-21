//
//  ViewController.swift
//  Saba7o
//
//  Created by Adel Araji on 2018-06-08.
//  Copyright © 2018 Adel Araji. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    //Function that transitions to the second screen
    func transitionToSecondScreen() {
        performSegue(withIdentifier: "mainTransition",  sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //Loading animation
        let animationView = LOTAnimationView(name: "bouncy_loader")
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        view.addSubview(animationView)
        
        animationView.loopAnimation = true
        animationView.play()
        
        //Stop animation after 4 seconds and display second screen
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            animationView.isHidden = true
            self.transitionToSecondScreen()
        }
    }
    

}

