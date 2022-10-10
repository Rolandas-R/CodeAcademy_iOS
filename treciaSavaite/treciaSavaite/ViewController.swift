//
//  ViewController.swift
//  treciaSavaite
//
//  Created by reromac on 2022-10-03.
//

/* import UIKit

class ViewController: UIViewController { //UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
var pakviesti: [String] = ["Antanas", "Petras"]
var arPrieme: [Bool] = [true, true]

    @IBOutlet weak var pakvietimuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pakvietimuTableView.delegate = self
        pakvietimuTableView.dataSource = self
        
        pakvietimuTableView.register(UINib(nibName: "PakvietimoTableViewCell", bundle: nil), forCellReuseIdentifier: "pakvietimoCele")
     
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pakviesti.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cele: PakvietimoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "pakvietimoCele", for: indexPath) as! pakvietimoCele
        cele.vardoLabel.text = pakviesti[indexPath.row]
        if arPrieme[indexPath.row] {
            cele.arPakviestasView.backgroundColor = .green
        } else {
            cele.arPakviestasView.backgroundColor = .red
        }
    
        
        return cele
    }

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectAtRow indexPath: IndexPath) -> Bool {
        <#code#>
    }
        
    }
 
*/

