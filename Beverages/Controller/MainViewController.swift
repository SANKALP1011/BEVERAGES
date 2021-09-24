//
//  ViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 22/09/21.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    @IBOutlet var animationView: AnimationView!
    @IBOutlet var nextView: UIView!
    @IBOutlet var NextButton: UIButton!
    @IBOutlet var mainLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        LottieAnimation()
    }
    
    func setupUI(){
        nextView.layer.cornerRadius = 20
        nextView.layer.shadowOpacity = 0.5
        nextView.layer.shadowColor = UIColor.black.cgColor
        nextView.layer.shadowRadius = 20
        nextView.layer.shadowOffset = .zero
        
        animationView.layer.cornerRadius = 20
        animationView.layer.shadowOpacity = 0.5
        animationView.layer.shadowColor = UIColor.black.cgColor
        animationView.layer.shadowRadius = 20
        animationView.layer.shadowOffset = .zero

        NextButton.layer.cornerRadius = 30
        NextButton.layer.shadowOpacity = 0.5
        NextButton.layer.shadowColor = UIColor.black.cgColor
        NextButton.layer.shadowRadius = 20
        NextButton.layer.shadowOffset = .zero
        
        mainLabel.layer.cornerRadius = 30
        mainLabel.layer.shadowOpacity = 0.3
        mainLabel.layer.shadowColor = UIColor.black.cgColor
        mainLabel.layer.shadowRadius = 10
        mainLabel.layer.shadowOffset = .zero
        mainLabel.text = "Beverage"
}
    
    private func LottieAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        animationView.play()
}
    
    @IBAction func NextButton(_sender: UIButton!){
        performSegue(withIdentifier: "goToMenu", sender: self)
    }


}

