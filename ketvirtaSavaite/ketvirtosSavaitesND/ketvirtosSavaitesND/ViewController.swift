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




//Perdaryti su segu, nes kol kas neatnaujina listo


import UIKit

var contacts: [String] = ["Juozas: 223322", "Pranas: 500500"]

func contactAppend(newContact: String){
    contacts.append(newContact)
    print(contacts)
}
class ViewController: UIViewController {


    @IBOutlet weak var contactListTableView: UITableView!
    @IBOutlet weak var newContactAddButton: UIBarButtonItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactListTableView.delegate = self
        contactListTableView.dataSource = self
        
        contactListTableView.register(UINib(nibName: "contactListTableViewCell", bundle: nil), forCellReuseIdentifier: "contactListCell")
        
        self.navigationItem.title = "Contact List"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contCell: contactListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath) as! contactListTableViewCell
        contCell.contactListTableCellLabel?.text = contacts[indexPath.row]
        return contCell
        
    }
    
    func reloadList(){
        self.contactListTableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contacts[indexPath.row])
    }
}
 
    
    
    
    


//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segOne" {
//            let cell = sender as! UITableViewCell
//            if let indexPath = contactListTableView.indexPath(for: cell) {
//                let nameControler = segue.destination as! addContactCedentialsViewController
//                nameControler.newContact = contacts[indexPath.row]
//
////            }
//    }






