//
//  inviteeViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-10-02.
//

import UIKit

class inviteeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var pakviestieji: UITableView!
    
    var pakviesti: [String] = ["Antanas", "Petras", "Juozas", "Kazys", "Eleonora", "Orinta"]
    var dalyvaus: [Bool] = [true, false, true, true, false, true]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        pakviestieji.register(UINib(nibName: "pakviestasTableViewCell", bundle: nil), forCellReuseIdentifier: "inviteeCell")

        // Do any additional setup after loading the view.
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    pakviesti.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "inviteeCell", for: indexPath) as? pakviestasTableViewCell
    
    cell?.pakviestasVardas.text = "\(pakviesti[indexPath.row])"
    cell?.arDalyvaus.text = "\(dalyvaus[indexPath.row])"
    
    if dalyvaus[indexPath.row] == true {
        cell?.backgroundColor = .cyan
    } else {
        cell?.backgroundColor = . green
    }
        
    return cell
}
    
    
}
