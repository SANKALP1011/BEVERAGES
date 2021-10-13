//
//  LogViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 11/10/21.
//

import Foundation
import  UIKit
import SwiftUI
import Firebase
import JGProgressHUD

class LogViewController: UIViewController{
    
    @IBOutlet var logView: UIView!
    @IBOutlet var logButton: UIButton!
    @IBOutlet var emailView: UIView!
    @IBOutlet var passView: UIView!
    @IBOutlet var yourEmail: UITextField!
    @IBOutlet var yourPassword: UITextField!
    
    var spinner = JGProgressHUD(style: .dark)
    
    private func setupUI(){
        
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
        
        logButton.layer.cornerRadius = 30
        yourEmail.layer.cornerRadius = 30
        yourPassword.layer.cornerRadius = 30
        
    }
    
    @IBAction func logButton(_ sender: UIButton!){
        self.spinner.show(in: self.view)
        Firebase.Auth.auth().signIn(withEmail: yourEmail.text!, password: yourPassword.text!) { (authResult,error) in
            if error != nil{
                print(error?.localizedDescription)
            }
            else{
                print("user Logged in")
                self.performSegue(withIdentifier: "goToMenu", sender: self)
            }
        }
        spinner.dismiss()
    }
}
