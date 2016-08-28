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

class FeedPage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("PostCell") as! PostCell
    }
    
    @IBAction func signOutApp(sender: AnyObject) {
        let keychainResult = KeychainWrapper.removeObjectForKey(KEY_UID)
        print("remove keychaing \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegueWithIdentifier("goToHome", sender: nil)
    }
}
