//
//  ViewController.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import UIKit

class ViewController: UIViewController {
    
// enumas, kuriame nurodoma, kad pradinis langas tures dvi busenas
    enum State {
        case register
        case login
    }
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
 /* pradine busena registravimosi, taip pat kintamieji ir konstantos
 reikalingi perduoti ar gauti userio duomenis. Naudojamos klases UserManager ir User
  */
    var currentState: State = .register
    let userManager = UserManager()
    var userForSegue: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

/* segmentinio kontrolerio veikimo f-ja. joje atsizvelgiant i pasirinkta busena
.login ar .register parodoma ar bus isvedamas passwordo konfirminimo
teksto laukas. Taip pat switcho pagalba atsizvelgiant i segmenta parenkamas rodomo labelio ant mygtuko uzrasas
 */
    @IBAction func segmentedChange(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0 {
            currentState = .register
        } else if segmentControl.selectedSegmentIndex == 1 {
            currentState = .login
        }
        
        confirmPasswordTextField.isHidden = currentState != .register
        
        switch currentState {
        case .register:
            registerButton.titleLabel?.text = "Register"
        case .login:
            registerButton.titleLabel?.text = "Login"
        }
    }
    
/* Aprasoma mygtuko paspaudimo logika. Joje atsizvelgiama i busena ir aprasoma kas bus priimama ir paduodama toliau. Naudojamos class UserManager, duomenys perduodami kintamuoju userForSegue, kuris is klases User.
 Taip pat aprasoma ar ir kada bus rodomas tekstas kai useris pateikia ne visus ar neteisingus duomenis isvedant pranesima i error.messageLabeli.
 */
    @IBAction func buttonTap(_ sender: Any) {
        
        switch currentState {
            
        // vietoj switch jei darome su if'u: if currentState == .register
        case .register:
            let result = userManager.register(
                username: usernameTextField.text!,
                password: passwordTextField.text!,
                confirmPassword: confirmPasswordTextField.text!)
            
            if let errorMessage = result.errorMessage {
                errorMessageLabel.text = errorMessage
                errorMessageLabel.isHidden = false
            } else {
                errorMessageLabel.isHidden = true
            }
        // vietoj switch jei darome su if'u: else if currentState == .login
        case .login:
            let result = userManager.login(
                username: usernameTextField.text!,
                password: passwordTextField.text!)
            if let errorMessage = result.errorMessage {
                errorMessageLabel.text = errorMessage
                errorMessageLabel.isHidden = false
            } else {
                errorMessageLabel.isHidden = true
                if let user = result.user {
                    userForSegue = user
                    performSegue(withIdentifier: "home", sender: nil)
                }
            }
            
            break
        }
    }
    
// segue f-ja. Sujungia ir perduoda useri po loginimo is sio VC i HomeViewControlleri

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "home" {
            if let viewController = segue.destination as? HomeViewController {
                viewController.user = userForSegue
                userForSegue = nil

            }
        }
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



