//
//  addContactCedentialsViewController.swift
//  ketvirtosSavaitesND
//
//  Created by reromac on 2022-10-14.
//

import UIKit

// Deklaravimas; delegatai siame ViewControleryje nebuvo butini?
class addContactCedentialsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameEnterTextForm: UITextField!
    @IBOutlet weak var phoneEnterTextForm: UITextField!
    
    // CLOSURE, kurios pagalba settinami duomenys i pirmo ViewControlerio TableViewa
    var enterClosure: ((String) -> ())!
    
    //mygtuko outletas
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    /*siam ND pasirinkau i forma ivestus duomenis sujungti cia ir perduoti i vietoje sukurta kintamaji, kuri veliau perduodu i pirmame VC esanti array bei atvaizduojamas Tableviewe. Galima buvo igyvendinti perduodant kiekviena reiksme atskirai ir jas apjungiant pirmal VC
 */
    var newContact: String?
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameEnterTextForm.delegate = self
        phoneEnterTextForm.delegate = self

        // navigacijos mygtuku ir veikimo logikos customizinimas;
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(addContactCedentialsViewController.saveButtonTap))
        self.navigationItem.title = "Enter Details"

       
    }

    @IBAction func saveButtonTap(_ sender: Any) {

        // duomenu surinkimas, apjungimas, irasymas i cia esanti kintamaji bei Closure pagalba perdavimas i pirma ViewControleri
        let newContact = nameEnterTextForm.text! + ": " + phoneEnterTextForm.text!
        enterClosure(newContact)

        print("\(newContact)")
        
        // sio VC  uzdarymas ir grazinimas pirmo ViewControlerio su lentele lango; zemiau dar vienas budas su funkcija dismiss
        navigationController?.popViewController(animated: true)
//        dismiss(animated: true)
    }
}











// Ivairus bandymai
//        @IBAction func saveButtonTapped(_ sender: Any) {
//            performSegue(
//                withIdentifier: "segOne",
//                sender: nil)
//    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segOne" {
//            (segue.destination as? ViewController)?.contacts
//        }
//
//    }


//        if let newContact = self.newContact {
//            let namePhone = newContact.components(separatedBy: ": ")
//            nameEnterTextForm.text = namePhone[0]
//            phoneEnterTextForm.text = namePhone[1]
//
//        }
//    print("\(newContact)")






//        var completionHandler: ((String) -> Int)?
//        let result = completionHandler?(newContact)
//
//        print("completionHandler returns… \(result)")
//        performSegue(withIdentifier: "segOne", sender: nil)




//    func saveButtonTap(_ sender: Any) {
//        let newContact = nameEnterTextForm.text! + ": " + phoneEnterTextForm.text!
//        print("\(newContact)")
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "segOne" {
//            (segue.destination as? ViewController)?.contacts.append( nameEnterTextForm.text! + ": " + phoneEnterTextForm.text!)
//
//        }
//    }
//

