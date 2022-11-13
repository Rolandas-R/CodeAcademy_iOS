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
    
    @IBAction func joinChatButtonTap(_ sender: Any) {
        // patobulintas variantas su showAlert f-ja, kuriai pakanka paduoti title ir message
        showAlert(title: "Error joining room", message: "Room not found")
    }
    
        /* MARK: pirminis variantas su alertu buvo toks:
         let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
         let alertController = UIAlertController(title: "Error joining room", message: "Room not found", preferredStyle: .alert)
         alertController.addAction(alertAction)
         self.present(alertController, animated: true)
         }*/

    @IBAction func createNewChatButtonTap(_ sender: Any) {
        #warning ("TODO: sukurti RoomViewControlleri")
//        let roomViewController = RoomViewController()
//        navigationController?.present(roomViewController, animated: true)
    }
    
    @IBAction func onlineUsersButtonTap(_ sender: Any) {
        showAlert(title: "Online users:", message: "\(user.username)")
    }
    
    @IBAction func offlineUsersButtonTap(_ sender: Any) {
        showAlert(title: "Offline users:", message: "")
    }
    
    @IBAction func logoutButtonTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
/* showAlert f-ja kuri leidzia isvengt kodo dubliavimo, kiekvieno buttono paspaudimui, kaip buvo numatyta pirminiame alert variante.
 */
    private func showAlert(title: String, message: String = ""){
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
    
    
/* segas kurio pagalba bus perduodami duomenys ir pereinama toliau i SettingsViewControlleri
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SettingsViewController {
            viewController.user = user
        }

    }
}
