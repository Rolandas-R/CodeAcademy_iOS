//
//  Alert.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-14.
//

import Foundation

class Alert{
    
    let alertType: String
    var message: String
    
    init(alertType: String, message: String) {
        self.alertType = alertType
        self.message = message
    }
    
    let loginAlert = Alert(alertType: "loginAlert", message: "Bad")
}
