//
//  editViewController.swift
//  laneManagmentApp
//
//  Created by JOHN GARIEPY on 11/7/24.
//

import UIKit

class ViewController4: UIViewController {

    
    @IBOutlet weak var label3: UILabel!
   
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var textyOutlet: UITextField!
    var change = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        label1.text = "Name: \(global.reservationHolder[global.idrow].name)"
        label2.text = "Lane: \(String(global.reservationHolder[global.idrow].laneNumber))"
        label3.text = "P#: \(global.reservationHolder[global.idrow].phoneNumber)"
        label4.text = "Time: \(String(global.reservationHolder[global.idrow].timeAmount))"

       
        
        
        
    }
    
    @IBAction func bobbyOutlet(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            change = 1
            break
        case 1:
            change = 2
            break
        case 2:
            change = 3
            break
        case 3:
            change = 4
            break
        
        default:
            change = 0
        }
    
        
    }
    
    @IBAction func textyChangeButton(_ sender: UIButton) {
        
        switch change {
        case 1:
            global.reservationHolder[global.idrow].changeName(newNane: textyOutlet.text ?? "Error")
        case 2:
            global.reservationHolder[global.idrow].changeLaneNumber(newLaneNumber: Int(textyOutlet.text!) ?? 0)
        case 3:
            global.reservationHolder[global.idrow].changePhonenumber(newPhonenumber: textyOutlet.text ?? "Unknown")
        case 4:
            global.reservationHolder[global.idrow].changeTimeAmount(newTimeAmount: Int(textyOutlet.text!) ?? 1)
        default:
            change = 0 
        }
        label1.text = global.reservationHolder[global.idrow].name
        label2.text = String(global.reservationHolder[global.idrow].laneNumber)
        label3.text = global.reservationHolder[global.idrow].phoneNumber
        label4.text = String(global.reservationHolder[global.idrow].timeAmount)
        
    }
    
}
