//
//  ViewController.swift
//  penktaAntraSavaitesPuse
//
//  Created by reromac on 2022-10-19.
//

import UIKit

class ViewController: UIViewController {
      

    @IBOutlet weak var kvadratas: UIView!
    
    @IBOutlet weak var taikinioBakgroundas: UIView!
    
    @IBOutlet weak var baltasVienas: UIView!
    
    @IBOutlet weak var taikinysVienas: UIView!
    @IBOutlet weak var taikinysDu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        uzapvalina()
        uzapvalinaDu()

    }
  
//    func uzapvalina() {
//        kvadratas.layer.cornerRadius = kvadratas.frame.width / 2
//        kvadratas.layer.borderWidth = kvadratas.frame.width * 0.1
//        kvadratas.layer.borderColor = UIColor.systemYellow.cgColor
//        kvadratas.layer.opacity = 1
//        kvadratas.layer.shadowOffset = CGSize(width: 10, height: 10)
//        kvadratas.layer.shadowOpacity = 1
//        kvadratas.layer.shadowRadius = 10
//    }
    func uzapvalinaDu() {
        taikinysVienas.layer.cornerRadius = taikinysVienas.frame.width / 2
        taikinysVienas.layer.borderColor = UIColor.systemRed.cgColor
        taikinysVienas.layer.borderWidth = taikinysVienas.frame.width * 0.1
        taikinysDu.layer.cornerRadius = taikinysDu.frame.width / 2
        taikinysDu.layer.borderWidth = taikinysDu.frame.width * 0.1
        taikinysDu.layer.borderColor = UIColor.systemRed.cgColor
         
    }
  
}



