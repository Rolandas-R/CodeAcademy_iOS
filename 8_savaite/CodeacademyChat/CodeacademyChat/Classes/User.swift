//
//  User.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation


// User class'e su username, passw ir isOnline parametrais. Pasiekiama ir naudojama is visu VC
class User {
    let username: String
    let password: String
    let isOnline: Bool
    
    // klases inicializavimas
    init(username: String, password: String, isOnline: Bool) {
        self.username = username
        self.password = password
        self.isOnline = isOnline
    }
}
