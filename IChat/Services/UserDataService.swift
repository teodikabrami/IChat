//
//  UserDataService.swift
//  IChat
//
//  Created by Teodik Abrami on 9/27/18.
//  Copyright © 2018 Teodik Abrami. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
    func returnUIColor(component: String) -> UIColor {
        // "[0.182361287638217, 0.1231232, 0.12312736127, 1]"
        let scanner = Scanner.init(string: component)
        let skipped = CharacterSet.init(charactersIn: "[], ")
        let comma = CharacterSet.init(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        
        var r, g, b, a: NSString?
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)

        let defaultColor: UIColor = UIColor.lightGray
        guard let runwrap = r else { return defaultColor }
        guard let gunwrap = g else { return defaultColor }
        guard let bunwrap = b else { return defaultColor }
        guard let aunwrap = a else { return defaultColor }
        
        let rfloat = CGFloat(runwrap.doubleValue)
        let gfloat = CGFloat(gunwrap.doubleValue)
        let bfloat = CGFloat(bunwrap.doubleValue)
        let afloat = CGFloat(aunwrap.doubleValue)
        
        return UIColor(red: rfloat, green: gfloat, blue: bfloat, alpha: afloat)
    }
    
}
/*
func swapTwoInts(_ a: inout Int,_ b: inout Int) {
    let temprorayA = a
    a = b
    b = temprorayA
}

var numberOne = 3
var numberTwo = 10

swapTwoInts(&numberOne, &numberTwo)
 */
