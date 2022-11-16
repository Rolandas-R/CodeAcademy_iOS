//
//  RoomViewController.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-13.
//

import UIKit

class RoomViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var messageTextView: UITextView!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    var currentUser: User!
    var room: Room!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)

        welcomeLabel.text = "Welcome to the room: \(room!.name)"
    }
    // MARK: - Private
    
    private func updateMessageTextView() {
        //vienas is variantu
        var messagesContent = [String]()
//        var joinedString = ""
        
        for message in room.message {
            let content =
// variantas:    let joinedString +=
//            if room.message.last?.date != message.date {
//                joinedString += "--------------" + "\n"
//            } else {
//                joinedString += "\n"
//            }

            """
            Date: \(message.date)
            
            User: \(message.username)
            
            Message: \(message.content)
            """
            
        messagesContent.append(content)
//            joinedString += "\n\n"
        }
    messageTextView.text = messagesContent.joined(separator: "\n------------ \n\n")
        
//        messageTextView.text = joinedString
    }
    
    // MARK: - Action

    @IBAction private func sendMessageButton(_ sender: Any) {
        room.writeMessage(messageContent: messageTextField.text!, sender: currentUser)
        updateMessageTextView()
    }
    
    

}
