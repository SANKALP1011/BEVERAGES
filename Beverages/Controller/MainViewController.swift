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
    @IBOutlet var NextButton: UIButton!
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

        NextButton.layer.cornerRadius = 30
        NextButton.layer.shadowOpacity = 0.5
        NextButton.layer.shadowColor = UIColor.black.cgColor
        NextButton.layer.shadowRadius = 5
        NextButton.layer.shadowOffset = .zero
        
        mainLabel.layer.cornerRadius = 30
        mainLabel.layer.shadowOpacity = 0.5
        mainLabel.layer.shadowColor = UIColor.black.cgColor
        mainLabel.layer.shadowRadius = 5
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
        self.spinner.show(in: self.view)
        spinner.minimumDisplayTime = 20
        performSegue(withIdentifier: "goToMenu", sender: self)
        
}



}

