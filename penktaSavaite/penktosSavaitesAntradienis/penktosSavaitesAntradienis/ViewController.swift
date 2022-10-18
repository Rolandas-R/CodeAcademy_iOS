//
//  ViewController.swift
//  penktosSavaitesAntradienis
//
//  Created by reromac on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelis: UILabel!
    
    @IBOutlet weak var buttonas: UIButton!
    
    @IBOutlet weak var textFieldas: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func ivestiTeksta(_ sender: Any) {
    }
    
    
    @IBAction func paspaustasMygtukas(_ sender: Any) {
        labelis.text = textFieldas.text
        print("paspaustas mygtukas")
        print("\(labelis.text!)")
    }
    
}

