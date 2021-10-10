//
//  SignViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 10/10/21.
//

import Foundation
import UIKit
import Firebase

class SignViewController: UIViewController{
    
    @IBOutlet var yourEmail: UITextField!
    @IBOutlet var yourPassword: UITextField!
    @IBOutlet var signButton: UIButton!
    
    @IBAction func signButton(_ sender: UIButton!){
        Firebase.Auth.auth().createUser(withEmail: yourEmail.text!, password: yourPassword.text!) { (authResult , error) in
            if error == nil{
                print(error?.localizedDescription)
            }
            else{
                print("signed in")
            }
        }
    }
    
}
