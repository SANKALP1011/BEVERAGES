//
//  OrderViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 28/09/21.
//

import Foundation
import UIKit
import Lottie

class OrderViewController: UIViewController{
    
    @IBOutlet var animationView: AnimationView!
    
    override func viewDidLoad() {
        lottiAnimation()
    }
    
    func lottiAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1
        animationView.loopMode = .loop
        animationView.play()
    }
    
    
    
    
    
}
