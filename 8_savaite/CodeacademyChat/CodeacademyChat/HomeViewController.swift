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

// kuriamas kintamasis user su Class User nurodytais parametrais
    var user: User!
    
    override func loadView() {
        super.loadView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // navigacijos VC nurodome, kad back mygtukas bus pasleptas
        navigationController?.setNavigationBarHidden(true, animated: true)
        // prisijungus rodomas pasveikinimas userio
        welcomeUserLabel.text = "Welcome, \(user.username)"
    }
    
/* seguas kurio pagalba bus perduodami duomenys ir pereinama toliau i SettingsViewControlleri
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SettingsViewController {
            viewController.user = user
        }

    }
}
