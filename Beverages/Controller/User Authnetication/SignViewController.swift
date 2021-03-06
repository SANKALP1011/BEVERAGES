//
//  SignViewController.swift
//  Beverages
//
//  Created by Sankalp Pandey on 10/10/21.
//

import Foundation
import UIKit
import Firebase
import JGProgressHUD
import Lottie


class SignViewController: UIViewController{
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet var yourEmail: UITextField!
    @IBOutlet var emailView: UIView!
    @IBOutlet var yourPassword: UITextField!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var signButton: UIButton!
    @IBOutlet var signView: UIView!
    
    let spinner = JGProgressHUD(style: .dark)
    
    override func viewDidLoad() {
        setupUI()
        LottieAnimation()
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
        
        passwordView.layer.cornerRadius = 30
        passwordView.layer.shadowOpacity = 0.5
        passwordView.layer.shadowColor = UIColor.black.cgColor
        passwordView.layer.shadowRadius = 5
        passwordView.layer.shadowOffset = .zero
        
        yourEmail.layer.cornerRadius = 30
        yourPassword.layer.cornerRadius = 30
        signButton.layer.cornerRadius = 30
}
    
    private func LottieAnimation(){
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        animationView.play()

    }
    
    @IBAction func signButton(_ sender: UIButton!){
        DatabaseModel.sharedData.checkNewUser(with: yourEmail.text!) { (exists) in
          guard !exists
          else{
            return
          }
        }
        self.spinner.show(in: self.view)
        Firebase.Auth.auth().createUser(withEmail: yourEmail.text!, password: yourPassword.text!) { (authResult , error) in
            if error != nil{
                print(error?.localizedDescription)
            }
            else{
                
                print("signed in")
                self.performSegue(withIdentifier: "goToMenu", sender: self)
            }
            DatabaseModel.sharedData.addUser(with: user(email: self.yourEmail.text!))
        }
        spinner.dismiss()
    }
    
    
}
