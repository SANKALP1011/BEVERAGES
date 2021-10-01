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
    
    
    
    @IBAction func SignButton(_sender: UIButton){
        FirebaseAuth.Auth.auth().createUser(withEmail: emailFeild.text!, password: passwordFeild.text!) { (auth , error) in
            if error != nil{
                print(error?.localizedDescription)
            }
            else{
                print("user signed isn")
                
            }
        }
    }
    
    
    
    
    
    
    
}
