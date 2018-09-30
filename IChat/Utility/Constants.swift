//
//  Constant.swift
//  IChat
//
//  Created by Teodik Abrami on 9/14/18.
//  Copyright © 2018 Teodik Abrami. All rights reserved.
//

import Foundation

// Typealias
typealias CompletionHandler = (_ success: Bool) -> Void

// Segue
let TO_LOGIN_SEGUE = "tologin"
let TO_CREATE_ACCOUNT_SEGUE = "toCreate"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toavatarpicker"

// User Default
let TOKEN_KEY = "tokenKey"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// header
let DEFUALT_HEADER =  [
    "Content-Type": "application/json; charset = utf-8"
]

let TOKEN_HEADER =  [
    "Content-Type": "application/json; charset = utf-8",
    "Authorization":"Bearer \(AuthService.instance.authToken)"
]

//cell Identifier

let AVATAR_CELL = "avatarCell"

// URLS
let BASE_URL = "https://teodikabramichat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Notification Constans
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDatachanged")
