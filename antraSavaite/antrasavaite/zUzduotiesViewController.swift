//
//  zUzduotiesViewController.swift
//  antrasavaite
//
//  Created by reromac on 2022-10-02.
//

import UIKit

class zUzduotiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var uzduotiesTableview: UITableView!
    
    @IBOutlet weak var goToAMygtukas: UIButton!
    
    @IBOutlet weak var goToBMygtukas: UIButton!
    
    @IBOutlet weak var goToCMygtukas: UIButton!
    
    var mySegs: [String] = ["seg1", "seg2", "seg3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mySegs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "zCele", for: indexPath)
        cell.textLabel?.text = mySegs[indexPath.row]
        
        return cell
    
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("pasitinkta eilute \(mySegs[indexPath.row])")
           
        performSegue(withIdentifier: mySegs[indexPath.row], sender: nil)
        }
   
    
}
    @IBAction func pasA(_ sender: Any) {
        if goToAMygtukas.isTouchInside{
            print("paspaustas mygtukas A")
            performSegue(withIdentifier: "iAvc", sender: nil)
        }
    }
    
    @IBAction func pasB(_ sender: Any) {
        print("paspaustas mygtukas B")
        performSegue(withIdentifier: "iBvc", sender: nil)
        
    }
        
    @IBAction func pasC(_ sender: Any) {
        print("paspaustas mygtukas C")
        performSegue(withIdentifier: "iCvc", sender: nil)
    }
    
}


