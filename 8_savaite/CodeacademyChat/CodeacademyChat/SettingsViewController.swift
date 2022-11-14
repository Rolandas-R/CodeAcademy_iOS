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
        // userio username text fielde perduodama ir atvaizduojama vartotojo username: variantasA:
//        userNameSettingsTextField.text = user.username
        // variantas su f-ja:
        updateUI()
    }
    
    private func updateUI() {
        userNameSettingsTextField.text = user.username
    }
    
    // keiciamas username'as alert controllerio pagalba
    @IBAction func userEditButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Edit Username", message: "Enter your new username:", preferredStyle: .alert)

        //paspaudus OK, patikrinama ar tikrai irasytas kitas username'as ir jei taip - pekaieciama info textfielde bei userio class
        
        let okAction = UIAlertAction(title: "OK", style: .default) { alertAction in
            if let userName = alertController.textFields?.first?.text, !userName.isEmpty {
                self.user.username = userName
                self.updateUI()
            }
        }
            
// MANO Variantas:
//        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//
//            let usernameTextField = alertController.textFields![0] as UITextField
//
//                if usernameTextField.text != self.userNameSettingsTextField.text {
//                    guard !usernameTextField.text!.isEmpty else {
//                        return
//                    }
//                    self.user.username = usernameTextField.text!
//                    self.userNameSettingsTextField.text = usernameTextField.text!
                    //            }
                    //            else {
//                    //                UIAlertController(title: "error", message: "not changed", preferredStyle: .alert)
//                }
//            }
//
    
        
        let cancelAction = UIAlertAction(title: "cancel", style: .default)
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        alertController.addTextField { textField in
            textField.placeholder = "Username"
        }
        
        self.present(alertController, animated: true)
    }
    
    // passwordo keitimas
    @IBAction func passwEditButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Edit password", message: "Enter your new password", preferredStyle: .alert)
        
        /* paspaudus OK, patikrinama ar naujas passwordas sutampa su confirmpassword ir jei taip - pekaieciama info textfielduose bei userio class */
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
            let passwordTextField = alertController.textFields![0] as UITextField
            let confirmPasswTextField = alertController.textFields![1] as UITextField
            
            if passwordTextField.text == confirmPasswTextField.text {
                self.user.password = passwordTextField.text!
                print("\(self.user.username) pasword was changed and is \(self.user.password)")
            } else {
#warning ("TODO: reikia kazka padaryti, greiciausiai dar viena alerta, kad informuoti useri, kas nesutapo passw ir confirmpassw")
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
