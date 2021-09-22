//
//  ViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 22/09/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet var NextButton: UIButton!
    @IBOutlet var mainLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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
}
    
    @IBAction func NextButton(_sender: UIButton!){
        performSegue(withIdentifier: "goToMenu", sender: self)
    }


}

