//
//  SestosViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-09-29.
//

import UIKit

class SestosViewController: UIViewController {

    @IBOutlet weak var iveduAmziu: UITextField!
    
    @IBOutlet weak var isveduIspejima: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func paleidziuPranesima(_ sender: Any) {
        
        let manoAmzius:Int = Int(iveduAmziu.text!)!
        
        if manoAmzius == 0 {
            isveduIspejima.text = "Neteisingai ivestas amzius"
        }
        else if manoAmzius < 20 {
            isveduIspejima.text = "Negalite gerti alaus, nes esate per jaunas"
        } else {
            isveduIspejima.text =
            "Esate tinkamo amziaus gerti alu. Vartokite atsakingai!"
            
        }
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
