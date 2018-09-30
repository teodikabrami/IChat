//
//  GradientView.swift
//  IChat
//
//  Created by Teodik Abrami on 9/14/18.
//  Copyright © 2018 Teodik Abrami. All rights reserved.
//

import UIKit


@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var thirdColor: UIColor = UIColor.red {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        print("1")
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor,thirdColor.cgColor]
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
