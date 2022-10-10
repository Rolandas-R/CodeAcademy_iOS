//
//  DelegacijuViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-10-01.
//

import UIKit

class DelegacijuViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var skaiciuTextfieldas: UITextField!
    
    @IBOutlet weak var manoPirmasTableview: UITableView!
    
    var ijungtasZadintuvas: [Bool] = [true, true, false, true, false, true, false, true]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*Jeigu delegata prie textfieldo nerisame storyboarde tempiant rodyklyte is delegato nustatymu i view controleri, tai galima padaryti ir aprasant kode sitoje vietoje:
         
        skaiciuTextfieldas.delegate = self */
        
        manoPirmasTableview.register(UINib(nibName: "myTableViewCell", bundle: nil), forCellReuseIdentifier: "zadintuvoCele")
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("tekstas pradedamas ivesti")
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       
        return Int(string) != nil
        
 /*      ilgesne quksciqu esancios funkcijos versija
         if Int(string) != nil{
            return true
        } else{
            return false
        } */
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ijungtasZadintuvas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           print("kuriama cele \(indexPath.row)")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "zadintuvoCele", for: indexPath) as! myTableViewCell
        

        cell.niboLabelis.text = "0\(indexPath.row):30"
        
        cell.niboSwitchas.isOn = ijungtasZadintuvas[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("pasirinkta cele nr \(indexPath.row)")
    }
    
}
