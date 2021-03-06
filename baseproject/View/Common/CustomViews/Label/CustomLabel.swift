//
//  CustomLabel.swift
//  baseproject
//
//  Created by sehosseini on 1/19/19.
//  Copyright © 2019 sehosseini. All rights reserved.
//

import Foundation
import UIKit

class CustomLabel: UILabel {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        self.textColor = Colors.gray
        self.font = UIFont.regular(ofSize: 15)
        setProperties(border: 0.0, border: Colors.lightMidGray)
    }
    
    func setProperties(border with: Float, border color: UIColor) {
        
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = CGFloat(with)
        
    }
}

