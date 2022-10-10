//
//  datapickerisViewController.swift
//  treciaSavaite
//
//  Created by reromac on 2022-10-03.
//

import UIKit

class datapickerisViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                7
            }
            
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cele2", for: indexPath)
        
        cell.textLabel?.text = "\(valandos[indexPath.row])"
        
        return cell
        
            }
    
 

    @IBOutlet weak var manoTableView: UITableView!
    @IBOutlet weak var laikoPicker: UIDatePicker!
    
    

            
    var valandos: [Int] = []
    var minutes: [Int] = []
            
    override func viewDidLoad() {
            super.viewDidLoad()
        
        manoTableView.dataSource = self
        manoTableView.delegate = self

    }
            
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        valandos.remove(at: indexPath.row)
        minutes.remove(at: indexPath.row)
        manoTableView.reloadData()
    }
    
    
            
        func addZadintuvas(_ sender: Any) {


        let date = laikoPicker.date
        let hour = Calendar.current.component(.hour, from: date)
        let minute = Calendar.current.component(.minute, from: date)
        valandos.append(hour)
        minutes.append(minute)
        manoTableView.reloadData()
            }
        

    }
    }




