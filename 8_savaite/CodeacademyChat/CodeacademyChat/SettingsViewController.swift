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
}
