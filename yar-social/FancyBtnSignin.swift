//
//  FancyBtnSignin.swift
//  yar-social
//
//  Created by Yar on 27/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit

class FancyBtnSignin: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: SHADOW_GRAY).CGColor
        
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)

        layer.cornerRadius = 2.0
        
    }

}
