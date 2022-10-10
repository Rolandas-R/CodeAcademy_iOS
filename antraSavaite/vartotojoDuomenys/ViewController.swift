//
//  ViewController.swift
//  vartotojoDuomenys
//
//  Created by reromac on 2022-10-04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vardasLaukas: UITextField!
    
    @IBOutlet weak var lytiesPasirinkimas: UISegmentedControl!
    
    @IBOutlet weak var pavardeLaukas: UITextField!
    
    @IBOutlet weak var lytisLaukas: UITextField!
    
    @IBOutlet weak var telefonasLaukas: UITextField!
    
    @IBOutlet weak var isvedimoLaukas: UILabel!
    
    @IBOutlet weak var isvedimoMygtukas: UIButton!
    
    @IBOutlet weak var arRodytiLyti: UISwitch!
    
    @IBOutlet weak var arRodytiTelefona: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
       
    /* @IBAction func pasirinkauLyti(_ sender: Any) {
        
        if lytiesPasirinkimas.isTouchInside {
            var lytis = "VYR"
        } else {
            var lytis = "MOT"
    } */
 
    
    @IBAction func paspaudziuMygtuka(_ sender: Any){
        
        var lytis: String? = nil
        var telefonas: String? = nil
        
        if arRodytiLyti.isOn {
            lytis = lytisLaukas.text
        }
        
        if arRodytiTelefona.isOn {
            telefonas = telefonasLaukas.text
        }
        isvedimoLaukas.text = showInfo(vardasLaukas.text!, pavardeLaukas.text!, lytis, telefonas)
    }
        
    func showInfo(_ vardas: String,_ pavarde: String,_ lytis: String?,_ telefonas: String?) -> String {
        
        
        // variantas (mokytojo):
        
        // var telefonasString: String = ""
        // var lytisString: String = ""
        
        // if let lytis = lytis {
            // lytisString = "Lytis : \(lytis)
        // }
        
        // if let telefonas = telefonas {
            // telefonasString = "telefonas \(telefonas)
        // }
        
        // isvedimoLaukas.text = "Vardas: \(vardas) Pavarde: \(pavarde) \(lytisString) \(telefonasString)"
        
        let lytisString = lytis ?? ""
        let telefonasString = telefonas ?? ""
        
        return "Vardas : \(vardas), pavarde: \(pavarde), lytis: \(lytisString), telefonas: \(telefonasString)"
 
    }

}

