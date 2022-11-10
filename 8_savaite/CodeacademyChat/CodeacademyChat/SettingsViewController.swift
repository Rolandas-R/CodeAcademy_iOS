//
//  SettingsViewController.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-09.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var userNameSettingsTextField: UILabel!
    @IBOutlet weak var userNameSettingsEditButton: UIButton!
    @IBOutlet weak var passwSettingsTextField: UILabel!
    @IBOutlet weak var passwSettingsEditButton: UIButton!
    @IBOutlet weak var manageHistorySettingsButton: UIButton!

    // vartotojo kintamasis su User class parametrais
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // navigation controlerio back buttonas bus rodomas kad grizt i pries tai esanti VC
        navigationController?.isNavigationBarHidden = false
        // userio username text fielde perduodama ir atvaizduojama vartotojo username
        userNameSettingsTextField.text = user.username
    }
    
    @IBAction func userEditButtonTapped(_ sender: Any) {
        let cancelAction = UIAlertAction(title: "cancel", style: .default, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        let alertController = UIAlertController(title: "usernameEditController", message: "Edit user name:", preferredStyle: .alert)
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        alertController.addTextField { textField in
            textField.placeholder = "Username"
        }
        
        self.present(alertController, animated: true)
        
//        alert.addAction(UIAlertAction(title: "OK", style: .alert, handler: { _ in
//            let passwordTextField.placeholder = placeholder
//
//        }
        
    }
    
}
