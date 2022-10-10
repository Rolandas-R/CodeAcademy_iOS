//
//  ViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-09-29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var robotoTekstas: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func paspaudeMygtuka(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ejimasITreciaUzduoti" {
            (segue.destination as? TreciasViewController)?.textasKuriGavau = robotoTekstas.text!
        }
    }
}

