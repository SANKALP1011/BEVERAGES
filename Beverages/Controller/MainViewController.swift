//
//  ViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 22/09/21.
//

import UIKit
import Lottie
import JGProgressHUD
import Firebase

class MainViewController: UIViewController {
    
    @IBOutlet var animationView: AnimationView!
    @IBOutlet var nextView: UIView!
    @IBOutlet var logView: UIView!
    @IBOutlet var logButton: UIButton!
    @IBOutlet var mainLabel: UILabel!
    
    private let spinner = JGProgressHUD(style: .dark)
    var text = "Beverages"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        LottieAnimation()
        authUser()
        
        for alphabets in text{
            print(alphabets)
    }
}
    
    func setupUI(){
        nextView.layer.cornerRadius = 30
        nextView.layer.shadowOpacity = 0.5
        nextView.layer.shadowColor = UIColor.black.cgColor
        nextView.layer.shadowRadius = 5
        nextView.layer.shadowOffset = .zero
        
        animationView.layer.cornerRadius = 20
        animationView.layer.shadowOpacity = 0.5
        animationView.layer.shadowColor = UIColor.black.cgColor
        animationView.layer.shadowRadius = 5
        animationView.layer.shadowOffset = .zero
        
        logView.layer.cornerRadius = 30
        logView.layer.shadowOpacity = 0.5
        logView.layer.shadowColor = UIColor.black.cgColor
        logView.layer.shadowRadius = 5
        logView.layer.shadowOffset = .zero
}
    
    private func LottieAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        animationView.play()
}
    
    private func authUser(){
        if Firebase.Auth.auth().currentUser != nil{
            print("yes")
            
        }
        else{
            print("no")
            performSegue(withIdentifier: "goToSign", sender: self)
        }
    }
    
    @IBAction func NextButton(_sender: UIButton!){
        performSegue(withIdentifier: "goToSign", sender: self)
    }
    
    @IBAction func logButton(_sender: UIButton!){
        performSegue(withIdentifier: "goToLog", sender: self)
        print("yes")
    }
    


}

