//
//  Room.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation


class Room {
    let name: String
    var message: [Message]
//    var onlineUsers: [User]
//    var offlineUsers: [User]
//    var messageHistory: [Message]

    
    init(name: String, message: [Message])
//         onlineUsers: [User],
//         offlineUsers: [User],
//         messageHistory: [Message],
{
    self.name = name
    self.message = message
//        self.onlineUsers = onlineUsers
//        self.offlineUsers = offlineUsers
//        self.messageHistory = messageHistory

    }
}
