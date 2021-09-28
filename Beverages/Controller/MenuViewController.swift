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
    @IBOutlet var coffeePlaced: UILabel!
    @IBOutlet var teaQunatity: UILabel!
    @IBOutlet var chocoQuantuty: UILabel!
    
    
    var coffeeNumberOfOrder = 0
    var teaOrder = 0
    var chocoOrder = 0
    
    var coffePrice = 150
    var teaPrice = 100
    var chocoPrice = 120
    
    var totalPrice = 0
    
    
    
  
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
    
    @IBAction func coffeeStepper(_ sender: UIStepper){
        coffeePlaced.text = String(format: "%.0f", sender.value)
        coffeeNumberOfOrder = Int(sender.value)
        
}
    
    @IBAction func teaStepper(_sender: UIStepper){
        teaQunatity.text = String(format: "%.0f", _sender.value)
        teaOrder = Int(_sender.value)
        
    }
    
    @IBAction func chocoStepper(_sender: UIStepper){
        chocoQuantuty.text = String(format: "%.0f", _sender.value)
        chocoOrder = Int(_sender.value)
        
    }
    
    @IBAction func orderButton(_sender: UIButton!){
        totalPrice = teaOrder*teaPrice + coffeeNumberOfOrder*coffePrice + chocoOrder*chocoPrice
        print(totalPrice)
        performSegue(withIdentifier: "goToOrder", sender: self)
        
        
    }
}
