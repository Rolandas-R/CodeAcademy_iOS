//
//  TreciasViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-09-29.
//

import UIKit

class TreciasViewController: UIViewController {
    
    var textasKuriGavau: String = ""

    @IBOutlet weak var trecioMygtukas: UIButton!
    
    @IBOutlet weak var trecioTekstoLaukas: UITextField!
   
    @IBOutlet weak var pirmosLabelis: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        pirmosLabelis.text = textasKuriGavau

        // Do any additional setup after loading the view.
    }
    
    @IBAction func treciasMygtukasPaspaustas(_ sender: Any) {
        print("mygtukas paspaustas")
        trecioTekstoLaukas.text = "Hello world"
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
