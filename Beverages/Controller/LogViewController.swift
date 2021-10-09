//
//  LogViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 09/10/21.
//

import UIKit
import Firebase

class LogViewController: UIViewController{
    
    @IBOutlet weak var yourEmail: UITextField!
    @IBOutlet weak var yourPassword: UITextField!
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet weak var logView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passView: UIView!
    
    override func viewDidLoad() {
        setUpUI()
    }
    
    private func setUpUI(){
        yourEmail.layer.cornerRadius = 30
        yourPassword.layer.cornerRadius = 30
        logButton.layer.cornerRadius = 30
        
        logView.layer.cornerRadius = 30
        logView.layer.shadowOpacity = 0.5
        logView.layer.shadowColor = UIColor.black.cgColor
        logView.layer.shadowRadius = 5
        logView.layer.shadowOffset = .zero
        
        emailView.layer.cornerRadius = 30
        emailView.layer.shadowOpacity = 0.5
        emailView.layer.shadowColor = UIColor.black.cgColor
        emailView.layer.shadowRadius = 5
        emailView.layer.shadowOffset = .zero
        
        passView.layer.cornerRadius = 30
        passView.layer.shadowOpacity = 0.5
        passView.layer.shadowColor = UIColor.black.cgColor
        passView.layer.shadowRadius = 5
        passView.layer.shadowOffset = .zero
        
        
}
    
    @IBAction func logButton(_sender: UIButton!){
        FirebaseAuth.Auth.auth().signIn(withEmail: yourEmail.text!, password: yourPassword.text!) { (authResult,error) in
            if error == nil{
                print(error?.localizedDescription)
            }
            else{
                print("userLoggedIn")
                self.performSegue(withIdentifier: "goToMenu", sender: self)
            }
        }
    }
}

