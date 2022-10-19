//
//  antraLayoutViewController.swift
//  penktosSavaitesAntradienis
//
//  Created by reromac on 2022-10-18.
//

import UIKit

class antraLayoutViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tekstoIvedimoLaukas: UITextField!
    
    
    @IBOutlet weak var tekstoLabelis: UILabel!
    
    
    @IBOutlet weak var fotke: UIImageView!
    
    
    @IBOutlet var tapAtpazinejas: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tekstoIvedimoLaukas.delegate = self

    }
    
 
    @IBAction func tapPicture(_ sender: UITapGestureRecognizer) {
        print("nuotrauka ryskiame view buvo paspausta")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        tekstoLabelis.text = tekstoIvedimoLaukas.text
        return true
    }


}
