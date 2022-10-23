//
//  ViewController.swift
//  penktosSavaitesND
//
//  Created by reromac on 2022-10-20.
//

import UIKit

var restoranas: [String] = ["Kaukas", "Studio55", "Piccolo Italia", "Mon Ami"]

class ViewController: UIViewController {
           
    
    @IBOutlet weak var lentaPradine: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lentaPradine.delegate = self
        lentaPradine.dataSource = self
        lentaPradine.register(UINib(nibName: "navigacijosTableViewCell", bundle: nil), forCellReuseIdentifier: "cele")
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "restoranuSegas" {
//            performSegue(withIdentifier: "restoranuSegas", sender: nil)
    
//}
//        else {
//            performSegue(withIdentifier: "receptoSegas", sender: nil)
//        }
//    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restoranas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: navigacijosTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath) as! navigacijosTableViewCell
        cell.labelisCeleje?.text = restoranas[indexPath.row]
  
            return cell
        }
    }
extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(restoranas[indexPath.row])
            self.performSegue(withIdentifier: "restoranoSegas", sender: nil)
                    }
                }


