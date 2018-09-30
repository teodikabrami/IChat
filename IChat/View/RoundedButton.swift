//
//  RoundedButton.swift
//  IChat
//
//  Created by Teodik Abrami on 9/27/18.
//  Copyright © 2018 Teodik Abrami. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRedius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRedius
        }
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = cornerRedius
    }
}
