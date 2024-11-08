//
//  ViewController.swift
//  userDefaultDemo
//
//  Created by apple on 05/11/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var field: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        if let value = UDM.shared.defaults.value(forKey: "name") as? String{
            label.text = value

        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UDM.shared.defaults.setValue(field.text, forKey: "name")
        field.resignFirstResponder()
        
        return true
    }
}


class UDM {
    
    static let shared = UDM()
    
    let defaults = UserDefaults(suiteName: "com.test.saved.data")!
    
    func getName() -> String{
        return ""
    }
}

