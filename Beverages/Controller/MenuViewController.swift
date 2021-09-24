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
    
    @IBOutlet var animationView1: AnimationView!
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
}
    
    private func lottieAnimation(){
        let animationView1 = Lottie.AnimationView(name: "order.json")
        animationView1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(animationView1)
        animationView1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        animationView1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        animationView1.heightAnchor.constraint(equalToConstant:  200).isActive = true
        animationView1.widthAnchor.constraint(equalToConstant: 200).isActive = true
}
    
    @IBAction func orderButton(_sender: UIButton!){
        
    }
}
