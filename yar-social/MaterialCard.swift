//
//  FancyView.swift
//  yar-social
//
//  Created by Yar on 27/08/16.
//  Copyright © 2016 yar. All rights reserved.
//

import UIKit

class MaterialCard: UIView {
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: SHADOW_GRAY).CGColor
        
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 1.0
        layer.shadowOffset = CGSize(width: 0.3, height: 0.2)
    }
}

