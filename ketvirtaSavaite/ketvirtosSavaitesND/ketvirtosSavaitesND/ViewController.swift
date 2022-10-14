//
//  ViewController.swift
//  ketvirtosSavaitesND
//
//  Created by reromac on 2022-10-14.
//

/* KETVIRTOS SAVAITES NAMU DARBO UZDUOTIS
 
 Sukurti contact listo screena, kuriame butu:
 1. UITableView ir UIView controlleriai;
 2. Lenteleje turi buti kontaktai kurie irasomi i array (pabandyti Tuple ar tuple i Array?). irasai - vardas ir telefono numeris;
 3. Buttonas + , kuri paspaudus atsidaro kitas langas, kuriame reikes ivesti kontakto duomenis: varda it telefono numeri
 4. Kai kontaktas iveda duomenis (buna sukurtas) grizti i pradini langa su closures pagalba;
 5. Prideti nauja kontakta i array ir atnaujinti duomenis
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newContactAddConfirmTextField: UITextField!
    @IBOutlet weak var contactListTableView: UITableView!
    @IBOutlet weak var goToNewContactAddPage: UIButton!
    
    var contacts: [String] = ["Juozas: 223322", "Pranas: 500500"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactListTableView.delegate = self
        contactListTableView.dataSource = self
        
        contactListTableView.register(UINib(nibName: "contactListTableViewCell", bundle: nil), forCellReuseIdentifier: "contactListCell")
       
    }

    @IBAction func addNewContactButtonPressed(_ sender: Any) {
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var contCell: contactListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath) as! contactListTableViewCell
        contCell.cellNameLabel.text = contacts[indexPath.row]
        return contCell    }
        
     
    
}
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
    if editingStyle == .insert {

    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contacts[indexPath.row])
    }
}

