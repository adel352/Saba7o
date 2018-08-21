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

    @IBOutlet weak var loadingBar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Loading animation
        loadingBar.center = view.center
        let animationView = LOTAnimationView(name: "bouncy_loader")
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        view.addSubview(animationView)
        
        animationView.loopAnimation = true
        animationView.play()
        
        //Second view after
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "welcomeScreen") as UIViewController
        navigationController?.pushViewController(vc, animated: true)
        
        // Safe Push VC
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "welcomeScreen") as? welcomScreen {
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }
    

}

