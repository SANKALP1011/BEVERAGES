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
    @IBOutlet var mainView: UIView!
    @IBOutlet var NextButton: UIButton!
    @IBOutlet var mainLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        LottieAnimation()
    }
    
    func setupUI(){
        mainView.layer.cornerRadius = 20
        mainView.layer.shadowOpacity = 0.5
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowRadius = 20
        mainView.layer.shadowOffset = .zero
        
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
        let animationView = Lottie.AnimationView(name: "tea.json")
        animationView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(animationView)
        animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        animationView.play()
        animationView.loopMode = .loop
}
    
    @IBAction func NextButton(_sender: UIButton!){
        performSegue(withIdentifier: "goToMenu", sender: self)
    }


}

