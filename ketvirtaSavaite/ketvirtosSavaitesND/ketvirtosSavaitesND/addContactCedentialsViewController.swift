//
//  addContactCedentialsViewController.swift
//  ketvirtosSavaitesND
//
//  Created by reromac on 2022-10-14.
//

import UIKit

var enterClosure : (String) -> () = contactAppend

class addContactCedentialsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameEnterTextForm: UITextField!
    @IBOutlet weak var phoneEnterTextForm: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var newContact: String?
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameEnterTextForm.delegate = self
        phoneEnterTextForm.delegate = self

        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(addContactCedentialsViewController.saveButtonTap))
        self.navigationItem.title = "Enter Details"

       
    }

    @IBAction func saveButtonTap(_ sender: Any) {
//    }
//    @IBAction func saveButtonTap() {
        
        let newContact = nameEnterTextForm.text! + ": " + phoneEnterTextForm.text!
        enterClosure(newContact)
        
        print("\(newContact)")
        navigationController?.popViewController(animated: true)
//        dismiss(animated: true)
    }
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

