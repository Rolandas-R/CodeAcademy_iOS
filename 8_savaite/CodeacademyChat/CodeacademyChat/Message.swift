//
//  Message.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation

class Message {
    var content: String
    let date: Date
    let username:String
    
    init(content: String, date: Date, username: String) {
        self.content = content
        self.date = date
        self.username = username
    }
    
    
}
