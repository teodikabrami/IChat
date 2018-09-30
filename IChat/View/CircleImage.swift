//
//  CircleImage.swift
//  IChat
//
//  Created by Teodik Abrami on 9/28/18.
//  Copyright © 2018 Teodik Abrami. All rights reserved.
//

import UIKit

@IBDesignable

class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
 
}
