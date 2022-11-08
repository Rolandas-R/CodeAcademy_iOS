//
//  User.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation

class User {
    let username: String
    let password: String
    let isOnline: Bool
    
    init(username: String, password: String, isOnline: Bool) {
        self.username = username
        self.password = password
        self.isOnline = isOnline
    }
}
