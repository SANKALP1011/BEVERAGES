//
//  MenuViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 22/09/21.
//

import Foundation
import UIKit
import Lottie

class MenuViewController: UIViewController{
    
    @IBOutlet var animationView: AnimationView!
    @IBOutlet var orderView: UIView!
    @IBOutlet var orderButton: UIButton!
    @IBOutlet var coffeLabel: UILabel!
    @IBOutlet var teaLabel: UILabel!
    @IBOutlet var chocoLabel: UILabel!
    @IBOutlet var coffeView: UIView!
    @IBOutlet var teaView: UIView!
    @IBOutlet var chocoView: UIView!
    
  
    override func viewDidLoad() {
        setupUI()
        lottieAnimation()
    }
    
    private func setupUI(){
        orderView.layer.cornerRadius = 30
        orderView.layer.shadowOpacity = 0.5
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowRadius = 20
        orderView.layer.shadowOffset = .zero
        
        orderButton.layer.cornerRadius = 30
        orderButton.layer.shadowOpacity = 0.5
        orderButton.layer.shadowColor = UIColor.black.cgColor
        orderButton.layer.shadowRadius = 20
        orderButton.layer.shadowOffset = .zero
        
        coffeView.layer.cornerRadius = 30
        coffeView.layer.shadowOpacity = 0.5
        coffeView.layer.shadowColor = UIColor.black.cgColor
        coffeView.layer.shadowRadius = 20
        coffeView.layer.shadowOffset = .zero
        
        teaView.layer.cornerRadius = 30
        teaView.layer.shadowOpacity = 0.5
        teaView.layer.shadowColor = UIColor.black.cgColor
        teaView.layer.shadowRadius = 20
        teaView.layer.shadowOffset = .zero
        
        chocoView.layer.cornerRadius = 30
        chocoView.layer.shadowOpacity = 0.5
        chocoView.layer.shadowColor = UIColor.black.cgColor
        chocoView.layer.shadowRadius = 20
        chocoView.layer.shadowOffset = .zero
        
        animationView.layer.cornerRadius = 30
        animationView.layer.shadowOpacity = 0.5
        animationView.layer.shadowColor = UIColor.black.cgColor
        animationView.layer.shadowRadius = 10
        animationView.layer.shadowOffset = .zero
}
    
    private func lottieAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        animationView.play()
}
    
    @IBAction func coffeeStepper(_sender: UIStepper){
        
    }
    
    @IBAction func teaStepper(_sender: UIStepper){
        
    }
    
    @IBAction func chocoStepper(_sender: UIStepper){
        
    }
    
    @IBAction func orderButton(_sender: UIButton!){
        
    }
}
