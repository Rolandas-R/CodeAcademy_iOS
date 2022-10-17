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

//        if let newContact = self.newContact {
//            let namePhone = newContact.components(separatedBy: ": ")
//            nameEnterTextForm.text = namePhone[0]
//            phoneEnterTextForm.text = namePhone[1]
//
//        }
//    print("\(newContact)")
    }

    
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
    @IBAction func saveButtonTap() {
        let newContact = nameEnterTextForm.text! + ": " + phoneEnterTextForm.text!
        
        var completionHandler: ((String) -> Int)?
        let result = completionHandler?(newContact)

        print("completionHandler returns… \(result)")
//        performSegue(withIdentifier: "segOne", sender: nil)
        print("\(newContact)")
    }
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
}
