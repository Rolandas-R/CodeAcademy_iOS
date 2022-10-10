// Trecia savaite
//
// Uzduotis: sukurti zadintuvo appsa, kad butu galima i tableview ivesti laika ir ji istrinti
//
// 1 bandymas - mano, su tekstiniu lauku, laikas - string tipo, neatskiriamos valandos nuo minuciu.
// Laukas priima bet kokias reiksmes;
//
//
//  zadintuvoViewController.swift
//  treciaSavaite
//
//  Created by reromac on 2022-10-03.
//

import UIKit

class zadintuvoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        zadintuvai.count
    }
    
// standartine cele
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath)
        
        cell.textLabel?.text = zadintuvai[indexPath.row]
        
        return cell
     }
// trynimo funkcija
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            zadintuvai.remove(at: indexPath.row)
            zadintuvuTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(zadintuvai[indexPath.row])
    }
    
    
    
    @IBOutlet weak var irasymoLaukas: UITextField!
    @IBOutlet weak var zadintuvuTableView: UITableView!
    @IBOutlet weak var prideti: UIButton!
    
// duomenu masyvas
    
    var zadintuvai: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// delegatu registravimas
        
        zadintuvuTableView.delegate = self
        zadintuvuTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
// mygtuko veiksmo funkcija - paspaudus prideda duomenis
    
    @IBAction func paspaustaPrideti(_ sender: Any) {
        zadintuvai.append(irasymoLaukas.text!)
        
// atnaujinamas tableview pridejus duomenis
        
        zadintuvuTableView.reloadData()
    }
}
    
    
    
    
    
    
    /*
  VARIANTAS SU DATE PICKERIU (pradinis):
     
     class ViewController: UIViewController {
         @IBOutlet weak var manoTableView: UITableView!
         @IBOutlet weak var laikoPicker: UIDatePicker!
         
         var valandos: [Int] = []
         var minutes: [Int] = []
         
         override func viewDidLoad() {
             super.viewDidLoad()
             manoTableView.dataSource = self
             // Do any additional setup after loading the view.
         }
         
         override func viewDidAppear(_ animated: Bool) {
             super.viewDidAppear(animated)
         }
         
         @IBAction func addAlarm(_ sender: Any) {
             let date = laikoPicker.date
             let hour = Calendar.current.component(.hour, from: date)
             let minute = Calendar.current.component(.minute, from: date)
             valandos.append(hour)
             minutes.append(minute)
             manoTableView.reloadData()
         }
     }    */


