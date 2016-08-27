//
//  ViewController.swift
//  yar-social
//
//  Created by Yar on 27/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class SignInVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        if let _ = KeychainWrapper.stringForKey(KEY_UID) {
            print("test key")
            performSegueWithIdentifier("goToFeed", sender: nil)
        }
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
                    if let user = user {
                        self.completeSignIn(user.uid)
                    }
                }
                else {
                    FIRAuth.auth()?.createUserWithEmail(email, password: password) { (user, error) in
                        if error != nil {
                            print("Unable to authenticate with App using this email")
                        }
                        else {
                            print (" Successfully authenticated with Firebase")
                            if let user = user {
                                self.completeSignIn(user.uid)
                            }
                        }
                    }
                }
            }
        }
    }
    
    func completeSignIn(id: String) {
        let keychainResult = KeychainWrapper.setString(id, forKey: KEY_UID )
        print("Data saved to keychaint \(keychainResult)")
        performSegueWithIdentifier("goToFeed", sender: nil)
    }
}

