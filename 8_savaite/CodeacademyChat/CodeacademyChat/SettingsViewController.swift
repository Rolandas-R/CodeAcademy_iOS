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
        let alertController = UIAlertController(title: "Edit Username", message: "Enter your new username:", preferredStyle: .alert)

        let cancelAction = UIAlertAction(title: "cancel", style: .default)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        #warning("Kazkodel nesuveikia userio vardo pakeitimas - nepasikeicia usernameTextField.text")
//        { _ in
//
//            let newUserName = alertController.textFields![0] as UITextField
//            if userNameSettingsTextField.text != newUserName.text {
//                self.user.username = newUserName.text!
//                print("OK")
//            } else {
//                print("Something went wrong")
//            }
//        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        alertController.addTextField { textField in
            textField.placeholder = "Username"
        }
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func passwEditButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Edit password", message: "Enter your new password", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
            let passwordTextField = alertController.textFields![0] as UITextField
            let confirmPasswTextField = alertController.textFields![1] as UITextField
            
            if passwordTextField.text == confirmPasswTextField.text {
                self.user.password = passwordTextField.text!
                print("OK")
            } else {
                print("Something went wrong")
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Password"
        }
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Confirm password"
        }
        
        self.present(alertController, animated: true)
    }
}
