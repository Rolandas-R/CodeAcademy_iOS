//
//  HomeViewController.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import UIKit



class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeUserLabel: UILabel!
    @IBOutlet weak var roomIdLabel: UILabel!
    @IBOutlet weak var enterRoomIdTextField: UITextField!
    @IBOutlet weak var joinChatButton: UIButton!
    @IBOutlet weak var onlineUsersButton: UIButton!
    @IBOutlet weak var offLineUsersButton: UIButton!
    @IBOutlet weak var createNewChatButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    var user: User!
    
    override func loadView() {
            super.loadView()
        }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           welcomeUserLabel.text = "Welcome, \(user.username)"
       }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
