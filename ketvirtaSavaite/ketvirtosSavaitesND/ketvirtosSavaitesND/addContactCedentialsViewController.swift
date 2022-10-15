//
//  addContactCedentialsViewController.swift
//  ketvirtosSavaitesND
//
//  Created by reromac on 2022-10-14.
//

import UIKit

class addContactCedentialsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameEnterTextForm: UITextField!
    @IBOutlet weak var phoneEnterTextForm: UITextField!
    
    
//    @IBOutlet weak var saveContactButton: UIBarButtonItem!
    var newContact: String?
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameEnterTextForm.delegate = self
        phoneEnterTextForm.delegate = self

// variantas, kaip galima aprasyti ir igyvendinti navigacijos SAVE mugtuka desineje. Taciau man nepavyko perduoti duomenis
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(addContactCedentialsViewController.saveButtonTap))
        self.navigationItem.title = "Enter Details"

        if let newContact = self.newContact {
            let namePhone = newContact.components(separatedBy: ": ")
            nameEnterTextForm.text = namePhone[0]
            phoneEnterTextForm.text = namePhone[1]
        }
    //print("\(newContact)")
    }

    @objc func saveButtonTap(_ sender: Any) {
        let newContact = nameEnterTextForm.text! + ": " + phoneEnterTextForm.text!
        print("\(newContact)")
    }
//
//    @IBAction func saveButtonTapped(_ sender: Any) {
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segOne" {
//            (segue.destination as? ViewController)?.gautasNaujasVardas = nameEnterTextForm.text!
//        }
//
//    }
}
