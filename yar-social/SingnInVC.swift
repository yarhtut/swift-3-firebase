//
//  ViewController.swift
//  yar-social
//
//  Created by Yar on 27/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signInApp(sender: AnyObject) {
        
        if let email = self.emailField.text, password = self.passwordField.text {
            
            FIRAuth.auth()?.signInWithEmail(email, password: password) { (user, error) in
                
                if error == nil {
                    print("User has authenticated with App")
                }
                else {
                    FIRAuth.auth()?.createUserWithEmail(email, password: password) { (user, error) in
                        if error != nil {
                            print("Unable to authenticate with App using this email")
                        }
                        else {
                            print (" Successfully authenticated with Firebase")
                        }
                    }
                }
            }
        }
    }
}

