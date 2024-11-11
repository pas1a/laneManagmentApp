//
//  CoolCell.swift
//  laneManagmentApp
//
//  Created by JOHN GARIEPY on 11/6/24.
//

import Foundation
import UIKit
class CoolCell: UITableViewCell{
    
    @IBOutlet weak var laneNumberOutlet: UILabel!
    
    @IBOutlet weak var nameLabelOutlet: UILabel!
    func configure(lane: String, name: String){
        laneNumberOutlet.text = "Lane: \(lane)"
        nameLabelOutlet.text = "Name: \(name)"
    }
}

