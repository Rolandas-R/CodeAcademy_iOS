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

/* pradinis array su keletu pavyzdiniu nariu jame. taip pat galima ir toks tuscio array deklaravimas:
          var contacts: [(vardas: String, tel: String)] = []
 */
var contacts: [String] = ["Juozas: 223322", "Pranas: 500500"]

class ViewController: UIViewController {

    @IBOutlet weak var contactListTableView: UITableView!
    @IBOutlet weak var newContactAddButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegatai. contactListTableView.delegate galbut siame atvejyje ir nebutinas?
        contactListTableView.delegate = self
        contactListTableView.dataSource = self
        
        //custom celes registravimas
        contactListTableView.register(UINib(nibName: "contactListTableViewCell", bundle: nil), forCellReuseIdentifier: "contactListCell")
        
        // navigacijos customizinimas. Duotas pavadinimas ir pervadintas Back mygtukas
        self.navigationItem.title = "Contact List"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
    }
    
    // Funkcija, kuri susijusi su closure ir kuri prideda nauja vartotoja gauta is kito ControlViewo i sukurta array siame ControlViewe; cia taip pat realizuota lenteles duomenu atnaujinimas
    func contactAppend(newContact: String){
        contacts.append(newContact)
        print(contacts)
        contactListTableView.reloadData()
    }
    
    // Funkcija reikalinga, kad per sega sujungti VControllerius, juose naviguoti ir perduoti duomenis vienas kitam
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? addContactCedentialsViewController {
            destination.enterClosure = contactAppend
            }
        }
    }

// TableViewo datasource ir delegato deklaravimas; standartinis reikalas, igyvendintas per extension (galima deklaruoti ir auksciau, abu kartu)
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    // custom tableview cele ir jos deklaravimas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contCell: contactListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath) as! contactListTableViewCell
        contCell.contactListTableCellLabel?.text = contacts[indexPath.row]
        return contCell
    }
}

// TV delegatas. Sita ND buvo galima padaryti ir be sio delegato
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contacts[indexPath.row])
    }
}
 
    
    
    


//Ivairus bandymai
//func contactAppend(newContact: String){
//    contacts.append(newContact)
//    print(contacts)
//}


//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segOne" {
//            let cell = sender as! UITableViewCell
//            if let indexPath = contactListTableView.indexPath(for: cell) {
//                let nameControler = segue.destination as! addContactCedentialsViewController
//                nameControler.newContact = contacts[indexPath.row]
//
////            }
//    }


//    func reloadList(){
//        self.contactListTableView.reloadData()
//    }






