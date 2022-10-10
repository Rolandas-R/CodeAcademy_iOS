//
//  KetvirtasViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-09-29.
//

import UIKit

class KetvirtasViewController: UIViewController {

    @IBOutlet weak var ketvirtosMygtukas: UIButton!
    
    @IBOutlet weak var ketvirtosSlaideris: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ketvirtosMygtukasPaspaustas(_ sender: Any) {
        print("Ketvirtos uzduoties mygtukas paspaustas")
        ketvirtosMygtukas.setTitle("Hello World", for: UIControl.State.normal)
    }
    
    @IBAction func SwitchasOn(_ sender: Any) {
        
        if ketvirtosSlaideris.isOn {
            view.backgroundColor = .green
            print("Ketvirtos uzduoties slaideri ijungtas")
        }
        else {view.backgroundColor = .systemBackground
            print("Ketvirtos uzduoties slaideris isjungtas")
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
