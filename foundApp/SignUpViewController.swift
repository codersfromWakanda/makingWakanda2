//
//  SignUpViewController.swift
//  foundApp
//
//  Created by Judy Gatobu on 4/16/18.
//  Copyright © 2018 Judy Gatobu. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    func SignUpUser() {
        // initialize a user object
        let newUser = PFUser()
        
        
        // set user properties
        newUser.username = usernameField.text
        newUser.email = emailField.text
        newUser.password = passwordField.text
        
        
        
        
        
        // call sign up function on the object
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                
                print(error.localizedDescription)
            } else {
                
                print("User Registered successfully")
                
                // manually segue to logged in view            
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


