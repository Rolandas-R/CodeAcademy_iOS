//
//  User.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation


// User class'e su username, passw ir isOnline parametrais. Pasiekiama ir naudojama is visu VC
class User {
    var username: String
    var password: String
    var isOnline: Bool
    
    // klases inicializavimas
    init(username: String, password: String, isOnline: Bool) {
        self.username = username
        self.password = password
        self.isOnline = isOnline
    }
}
