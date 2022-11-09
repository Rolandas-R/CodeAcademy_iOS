//
//  ViewController.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    var currentState: State = .register
    let userManager = UserManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
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
    
    
    @IBAction func buttonTap(_ sender: Any) {
        
        switch currentState {
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
        case .login:
            let result = userManager.login(
                username: usernameTextField.text!,
                password: passwordTextField.text!)
            if let errorMessage = result.errorMessage {
                errorMessageLabel.text = errorMessage
                errorMessageLabel.isHidden = false
            } else {
                errorMessageLabel.isHidden = true
//                if let user = result.user {
//                    userForSegue = user
//                    performSegue(withIdentifier: "home", sender: nil)
//                }
//            }
            
            break
//        }
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "home" {
//            if let viewController = segue.destination as? HomeViewController {
//                viewController.user = userForSegue
//                userForSegue = nil
//
            }
        }
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

//
//
//     .case login:
//
//     if let user = result.user {
//         performSegue(withIdentifier: "home", sender: self)
//
//
//


