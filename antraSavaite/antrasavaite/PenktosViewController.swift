//
//  PenktosViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-09-29.
//

import UIKit

class PenktosViewController: UIViewController {

    @IBOutlet weak var ivedaVarda: UITextField!
    
    @IBOutlet weak var ivedaPavarde: UITextField!
    
    @IBOutlet weak var asmensPasveikinimoLabelis: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func mygtukoPaspaudimas(_ sender: Any) {
        let asmensVardas = ivedaVarda.text!
        let asmensPavarde = ivedaPavarde.text!
        asmensPasveikinimoLabelis.text = "Sveiki atvyke \(asmensVardas) \(asmensPavarde)"
        print("asmuo yra \(asmensVardas) \(asmensPavarde)")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
