//
//  ViewController3.swift
//  laneManagmentApp
//
//  Created by JOHN GARIEPY on 10/30/24.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var laneNumberTextField: UITextField!
    
    @IBOutlet weak var PNtextField: UITextField!
    
    @IBOutlet weak var timeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        let subV = Reservation(name: nameTextField.text ?? "Unknown Name", laneNumber: Int(laneNumberTextField.text ?? "1") ?? 1, phoneNumber: PNtextField.text ?? "Unknown PN", timeAmount: Int(timeTextField.text ?? "1") ?? 1)
        
        global.reservationHolder.append(subV)
        
        nameTextField.text = ""
        laneNumberTextField.text = ""
        PNtextField.text = ""
        timeTextField.text = ""
        
        
    }
    
}
