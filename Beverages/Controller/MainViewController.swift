//
//  ViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 22/09/21.
//

import UIKit
import Lottie
import JGProgressHUD

class MainViewController: UIViewController {
    
    @IBOutlet var animationView: AnimationView!
    @IBOutlet var nextView: UIView!
    @IBOutlet var mainSignView: UIView!
    @IBOutlet var signOption: UIButton!
    @IBOutlet var logOption: UIButton!
    @IBOutlet var mainLabel: UILabel!
    
    
    
    private let spinner = JGProgressHUD(style: .dark)
    var text = "Beverages"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        LottieAnimation()
        
        for alphabets in text{
            print(alphabets)
    }
    }
    
    func setupUI(){
        nextView.layer.cornerRadius = 20
        nextView.layer.shadowOpacity = 0.5
        nextView.layer.shadowColor = UIColor.black.cgColor
        nextView.layer.shadowRadius = 5
        nextView.layer.shadowOffset = .zero
        
        animationView.layer.cornerRadius = 20
        animationView.layer.shadowOpacity = 0.5
        animationView.layer.shadowColor = UIColor.black.cgColor
        animationView.layer.shadowRadius = 5
        animationView.layer.shadowOffset = .zero
   
        mainSignView.layer.cornerRadius = 20
        mainSignView.layer.shadowOpacity = 0.5
        mainSignView.layer.shadowColor = UIColor.black.cgColor
        mainSignView.layer.shadowRadius = 5
        mainSignView.layer.shadowOffset = .zero
        
        logOption.layer.cornerRadius = 30
        signOption.layer.cornerRadius = 30
}
    
    private func LottieAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        animationView.play()
}
    
    @IBAction func logOption(_sender: UIButton!){
        performSegue(withIdentifier: "goToLog", sender: self)
    }
    
    @IBAction func signOption(_sender: UIButton!){
        performSegue(withIdentifier: "goToSign", sender: self)
    }


}

