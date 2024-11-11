//
//  File.swift
//  collectionNotesApp
//
//  Created by JOHN GARIEPY on 10/30/24.
//

import Foundation

class Reservation: Codable{
    var name: String
    var laneNumber: Int
    var phoneNumber: String
    var timeAmount: Int
    
    init(name: String, laneNumber: Int, phoneNumber: String, timeAmount: Int) {
        self.name = name
        self.laneNumber = laneNumber
        self.phoneNumber = phoneNumber
        self.timeAmount = timeAmount
    }
    
    func changeName(newNane: String){
        name = newNane
    }
    func changeLaneNumber(newLaneNumber: Int){
        laneNumber = newLaneNumber
    }
    func changePhonenumber(newPhonenumber: String){
        phoneNumber = newPhonenumber
    }
    func changeTimeAmount(newTimeAmount: Int){
        timeAmount = newTimeAmount
    }
    
    func getName() -> String{
        return name
    }
    func getLane() -> Int{
        return laneNumber
    }
    func getPN() -> String{
        return phoneNumber
    }
    func getTime() -> Int{
        return timeAmount
    }
    
    func toString() -> String{
        let bob = "Name: \(name) \n Lane #: \(laneNumber) \n Phone Number: \(phoneNumber) \n Time Allowed: \(timeAmount)"
        return bob
    }

    
}


