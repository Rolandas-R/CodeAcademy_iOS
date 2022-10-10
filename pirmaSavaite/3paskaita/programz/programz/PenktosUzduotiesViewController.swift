//
//  PenktosUzduotiesViewController.swift
//  programz
//
//  Created by reromac on 2022-09-27.
//

// MANO VERSIJA 22-09-27

import UIKit

class PenktosUzduotiesViewController: UIViewController {

    @IBOutlet weak var vardoITextfyldas: UITextField!
    
    @IBOutlet weak var pavardesTextfyldas: UITextField!

    @IBOutlet weak var mygtukasB: UIButton!
    
    @IBOutlet weak var pasisveikinimas: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func IvestiVarda(_ sender: Any) {
     
           }
    @IBAction func ivestiPavarde(_ sender: Any) {
       
    }

    @IBAction func paspaustasMygtukas(_ sender: Any) {
        pasisveikinimas.text = "Sveikas  \(vardoITextfyldas.text!)   \(pavardesTextfyldas.text!). Smagu tave matyti!"
        print(pasisveikinimas.text)
        
    }
    
    
}




     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

    
