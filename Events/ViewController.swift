//
//  ViewController.swift
//  Events
//
//  Created by Nuhu Sulemana on 10/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggleSwitch: UISwitch!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitButtonClicked(_ sender: UIButton) {
        let name = nameField.text ?? ""
        titleLable.text = "Marhaba, \(name)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .yellow
        } else {
            self.view.backgroundColor = .darkGray
        }
    }

}

