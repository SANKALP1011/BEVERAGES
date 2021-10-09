//
//  SignViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 09/10/21.
//

import Foundation
import  UIKit
import Firebase

class SignViewController: UIViewController{
    
    @IBOutlet var signView: UIView!
    @IBOutlet var signButton: UIButton!
    @IBOutlet var emailView: UIView!
    @IBOutlet var yourEmail: UITextField!
    @IBOutlet var passView: UIView!
    @IBOutlet var yourPassword: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    private func setupUI(){
        
        signView.layer.cornerRadius = 30
        signView.layer.shadowOpacity = 0.5
        signView.layer.shadowColor = UIColor.black.cgColor
        signView.layer.shadowRadius = 5
        signView.layer.shadowOffset = .zero
        
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
        
        yourEmail.layer.cornerRadius = 30
        yourPassword.layer.cornerRadius = 30
        signButton.layer.cornerRadius = 30
        
    }
    
    @IBAction func signButton(_ sender: UIButton!){
        FirebaseAuth.Auth.auth().createUser(withEmail: yourEmail.text!, password: yourPassword.text!) { (auth,error) in
            if error ==  nil{
                print(error?.localizedDescription)
            }
            else{
                print("userSignedIn")
            }
        }
    }
}
