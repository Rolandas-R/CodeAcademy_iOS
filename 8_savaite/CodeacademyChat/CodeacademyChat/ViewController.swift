//
// MARK: uzduoties sprendime sitas VC yra vadinamas LoginViewController
//
//  ViewController.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import UIKit

// MARK: uzduoties sprendime sitas VC yra vadinamas LoginViewController

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
//    @IBOutlet weak var errorMessageLabel: UILabel!
    
 /* pradine busena yra registravimosi, taip pat kintamieji ir konstantos
 reikalingi perduoti ar gauti userio duomenis. Naudojamos klases UserManager ir User.
  UserManager klase reikalinga aprasyti ir perduoti sukurtu useriu duomenis
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
        
 /* MARK: pirminis variantas buvo toks:
        switch currentState {
        case .register:
            registerButton.titleLabel?.text = "Register"
        case .login:
            registerButton.titleLabel?.text = "Login"
        }
  */
        
  //Pakeistas variantas:
        switch currentState {
        case .register:
            registerButton.setTitle("Register", for: .normal)
        case .login:
            registerButton.setTitle("Login", for: .normal)
        }
        
    }
    
/* Aprasoma mygtuko paspaudimo logika. Joje atsizvelgiama i busena ir aprasoma kas bus priimama ir paduodama toliau. Naudojamos class UserManager, duomenys perduodami kintamuoju userForSegue, kuris is klases User.
 Taip pat aprasoma ar ir kada bus rodomas tekstas kai useris pateikia ne visus ar neteisingus duomenis isvedant pranesima i error.messageLabeli.
 */
    @IBAction func buttonTap(_ sender: Any) {
    // MARK: naudojamas pakoreguotas case .register ir .login: antras variantas - maziau besikartojancio kodo
        switch currentState {
        case .register:
            let result = userManager.register(
                username: usernameTextField.text!,
                password: passwordTextField.text!,
                confirmPassword: confirmPasswordTextField.text!)
            validateUser(from: result)
            
        case .login:
            let result = userManager.login(
                username: usernameTextField.text!,
                password: passwordTextField.text!)
            validateUser(from: result)
        }
}
            
    /* MARK: pirminis case .register ir .login variantas buvo toks:
        switch currentState {
             // jei vietoj switch darome su if'u tada: if currentState == .register
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
             
             // vietoj switch jei darome su if'u rasome elseif'a: else if currentState == .login
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
    } */
        


    /* sita f-ja validateUser() mes galime paleisti pakoreguota koda(switch case .login antras variantas) kur seniau, kai switch case'as buvo .login mums reikejo pakartoti username ir passwordo patikrinimo koda taip pat, kaip ir case .registered (//uzkomentuota switch dalis: pirminis variantas), tai dabar mes tai padarome paprasciau, neperrasinejame kodo, kuris tampa lengviau skaitomu)
     */

    private func validateUser(from userResult: UserResult) {
        if let errorTitle = userResult.errorTitle,
           let errorMessage = userResult.errorMessage {
                showError(title: errorTitle, message: errorMessage)
            } else {
                if let user = userResult.user {
                    userForSegue = user
                    performSegue(withIdentifier: "home", sender: nil)
                }
            }
        }
    
    /* Klaidos rodymo f-ja. Pirminiame variante buvo naudojamas errorMessageLabel, kuris pakeistas UIAlertAction'u
     */
    private func showError(title: String, message: String) {
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



