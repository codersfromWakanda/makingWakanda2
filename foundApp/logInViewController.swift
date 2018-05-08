//
//  logInViewController.swift
//  foundApp
//
//  Created by Judy Gatobu on 4/16/18.
//  Copyright © 2018 Judy Gatobu. All rights reserved.
//

import UIKit
import Parse

class logInViewController: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var UsernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
        
        @IBAction func onTalSignin(_ sender: Any) {
            loginUser()
        }
        
        
       /* @IBAction func onTapSignUp(_ sender: Any) {
            
            SignUpUser()
        }*/
        
        
        
        func loginUser() {
            
            let username = UsernameField.text ?? ""
            let password = passwordField.text ?? ""
            
            PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
                
                if let error = error {
                    print("User log in failed: \(error.localizedDescription)")
                } else {
                    print("User logged in successfully")
                    self.performSegue(withIdentifier: "loginSeague", sender: self)
                    
                    // display view controller that needs to shown after successful login
                    
                    
                }
                
            }
        }
        
        
        /*func SignUpUser() {
            // initialize a user object
            let newUser = PFUser()
            
            // set user properties
            //newUser.name = nameField.text
            newUser.username = UsernameField.text ?? ""
            newUser.email = emailField.text
            newUser.password = passwordField.text ?? ""
            
            
            
            
            
            // call sign up function on the object
            newUser.signUpInBackground { (success: Bool, error: Error?) in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("User Registered successfully")
                    // manually segue to logged in view
                    
                    self.performSegue(withIdentifier: "loginSeague", sender: self)
                    
                    
                }
            }
        }*/

    
     

}
