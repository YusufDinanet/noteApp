//
//  ViewController.swift
//  notApp
//
//  Created by Muhammed Yusuf Dinanet on 5.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var notTextField: UITextField!
    
    @IBOutlet weak var zamanTextField: UITextField!
    
    @IBOutlet weak var notLabel: UILabel!
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let gelenNot = kaydedilenNot as? String {
            
            notLabel.text = "Yapilacak Is : \(gelenNot)"
        }
        if let gelenZaman = kaydedilenZaman as? String {
            zamanLabel.text = "Yapilacak Zaman : \(gelenZaman)"
        }
        
    }

    @IBAction func kaydetTiklandi(_ sender: Any) {
        
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = "Yapilacak is :  \(notTextField.text! )"
        zamanLabel.text = "yapilacak zaman : \(zamanTextField.text!)"
        
        
    }
    
    
    @IBAction func silTiklandi(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if (kaydedilenNot as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "Yapilacak Is : "
            
        }
        if (kaydedilenZaman as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Yapilacak Zaman : "
            
        }
    }
    
    
}

