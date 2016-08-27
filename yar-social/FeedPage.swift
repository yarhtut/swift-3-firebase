//
//  FeedPage.swift
//  yar-social
//
//  Created by Yar on 28/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedPage: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signOutApp(sender: AnyObject) {
        let keychainResult = KeychainWrapper.removeObjectForKey(KEY_UID)
        print("remove keychaing \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegueWithIdentifier("goToHome", sender: nil)
    }
}
