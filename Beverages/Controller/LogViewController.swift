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

class LogViewController: UIViewController{
    
    @IBOutlet var logView: UIView!
    @IBOutlet var logButton: UIButton!
    @IBOutlet var emailView: UIView!
    @IBOutlet var passView: UIView!
    @IBOutlet var yourEmail: UITextField!
    @IBOutlet var yourPassword: UITextField!
    
    private func setupUI(){
        
    }
    
    @IBAction func logButton(_ sender: UIButton!){
        Firebase.Auth.auth().signIn(withEmail: yourEmail.text!, password: yourPassword.text!) { (authResult,error) in
            if error == nil{
                print(error?.localizedDescription)
            }
            else{
                print("user Logged in")
            }
        }
    }
}
