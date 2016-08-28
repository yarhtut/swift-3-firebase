//
//  CircleView.swift
//  yar-social
//
//  Created by Yar on 28/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit

class CircleView: UIImageView {

    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: SHADOW_GRAY).CGColor
        
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        clipsToBounds = true
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
    }

    

}
