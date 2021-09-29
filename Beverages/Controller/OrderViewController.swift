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
    @IBOutlet var ThankYouLabel: UILabel!
    @IBOutlet var orderLabel: UILabel!
    
    var TotalOrderPrice = 0
    
    override func viewDidLoad() {
        lottiAnimation()
        orderLabel.text = "You have to pay \(TotalOrderPrice) Rupees for your order."
    }
    
    func lottiAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1
        animationView.loopMode = .loop
        animationView.play()
    }
}
