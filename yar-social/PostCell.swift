//
//  PostCell.swift
//  yar-social
//
//  Created by Yar on 28/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var usernameLb: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likesLb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

}
