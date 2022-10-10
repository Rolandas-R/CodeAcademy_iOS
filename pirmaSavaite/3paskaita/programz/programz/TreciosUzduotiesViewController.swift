//
//  TreciosUzduotiesViewController.swift
//  programz
//
//  Created by reromac on 2022-09-27.
//

import UIKit

class TreciosUzduotiesViewController: UIViewController {
    @IBOutlet weak var mygtukas: UIButton!
 
    @IBOutlet weak var slankiklis: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DidTapMygtukas(_ sender: Any) {
        print("Mygtukas paspaustas")
        mygtukas.backgroundColor = .darkText
        mygtukas.backgroundColor = .systemGreen
        mygtukas.setTitle("Hello world", for: UIControl.State.normal)
    }


    @IBAction func ok(_ sender: Any) {
        if slankiklis.isOn{
            view.backgroundColor = .systemBlue}
        else {
            view.backgroundColor = .systemPurple}
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
