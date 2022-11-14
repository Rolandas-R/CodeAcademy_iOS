//
//  RoomManager.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.


import Foundation

struct RoomResult {
    let errorMessage: String?
    let room: Room?
    
}

class RoomManager {
    var rooms: [Room] = []
    
    func createRoom(roomName: String) -> RoomResult {
        guard !roomName.isEmpty else {
            return RoomResult(errorMessage: "Room name can't be empty", room: nil)
        }
        for room in rooms {
            if room.name == roomName {
                return RoomResult(errorMessage: "Room name already exist", room: nil)
            }
        }
        let room = Room(name: roomName, message: [])
        rooms.append(room)
        return RoomResult(errorMessage: nil, room: room)
    }
    
    
    func getRoom(roomName: String) -> RoomResult {
        guard let room = rooms.first(where: { room in
            room.name == roomName
        }) else {
            return RoomResult(errorMessage: "Room doesn't exist", room: nil)
        }
        
        return RoomResult(errorMessage: nil, room: room)
    }
}
