//
//  SignViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 01/10/21.
//

import Foundation
import UIKit
import SwiftUI
import Firebase

class SignViewController: UIViewController{
    
    @IBOutlet weak var emailFeild: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    @IBOutlet weak var SignButton: UIButton!
    @IBOutlet weak var SignView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    override func viewDidLoad() {
        setupUI()
    }
    
    private func setupUI(){
        emailView.layer.cornerRadius = 30
        emailView.layer.shadowOpacity = 0.5
        emailView.layer.shadowColor = UIColor.black.cgColor
        emailView.layer.shadowRadius = 5
        emailView.layer.shadowOffset = .zero
        
        passwordView.layer.cornerRadius = 30
        passwordView.layer.shadowOpacity = 0.5
        passwordView.layer.shadowColor = UIColor.black.cgColor
        passwordView.layer.shadowRadius = 5
        passwordView.layer.shadowOffset = .zero
        
        SignView.layer.cornerRadius = 30
        SignView.layer.shadowOpacity = 0.5
        SignView.layer.shadowColor = UIColor.black.cgColor
        SignView.layer.shadowRadius = 5
        SignView.layer.shadowOffset = .zero
        
        SignButton.layer.cornerRadius = 30
        SignButton.layer.shadowOpacity = 0.5
        SignButton.layer.shadowColor = UIColor.black.cgColor
        SignButton.layer.shadowRadius = 5
        SignButton.layer.shadowOffset = .zero
        
        emailFeild.layer.cornerRadius = 30
        passwordFeild.layer.cornerRadius = 30
    }
    
    
    
    @IBAction func SignButton(_sender: UIButton){
        FirebaseAuth.Auth.auth().createUser(withEmail: emailFeild.text!, password: passwordFeild.text!) { (auth , error) in
            if error != nil{
                print(error?.localizedDescription)
            }
            else{
                print("user signed in")
                
            }
        }
    }
    
    
    
    
    
    
    
}
