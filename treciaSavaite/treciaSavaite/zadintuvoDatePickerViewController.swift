// TRECIA SAVAITE
//
// Zadintuvo appsas su laiko ivedimu per datepickeri
//
// 3. mano variantas
//
//
//
//  zadintuvoDatePickerViewController.swift
//  treciaSavaite
//
//  Created by reromac on 2022-10-04.
//

import UIKit

class zadintuvoDatePickerViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        cell.textLabel?.text = "\(hours[indexPath.row]) : \(minutes[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        hours.remove(at: indexPath.row)
        minutes.remove(at: indexPath.row)
        myAlarmTableView.reloadData()
    }
    }
    
    var hours: [Int] = []
    var minutes: [Int] = []
        

    
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBOutlet weak var myEnterButton: UIButton!
    
    @IBOutlet weak var myAlarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myAlarmTableView.dataSource = self

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func valuesEntered(_ sender: Any) {
        let date = myDatePicker.date
        let hour = Calendar.current.component(.hour, from: date)
        let minute = Calendar.current.component(.minute, from: date)
        
        hours.append(hour)
        minutes.append(minute)
        myAlarmTableView.reloadData()
        
    }
    
}
