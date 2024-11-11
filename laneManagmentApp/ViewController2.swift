//
//  ViewController2.swift
//  laneManagmentApp
//
//  Created by JOHN GARIEPY on 10/29/24.
//

import UIKit
class global{
    static var idrow = 0
    static var reservationHolder = [Reservation]()
    
}

class bob:Codable{
    var name: String
    var lane: Int
    var pn: String
    var time: Int
    
    init(name: String, lane: Int, pn: String, time: Int) {
        self.name = name
        self.lane = lane
        self.pn = pn
        self.time = time
    }
}

class ViewController2: UIViewController,UITableViewDelegate, UITableViewDataSource  {
    
    var defaults = UserDefaults.standard
    
    var encoder = JSONEncoder()
    var decoder = JSONDecoder()
    
   
    
    
    @IBOutlet weak var tableViewOne: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOne.dataSource = self
        tableViewOne.delegate = self
        
        if let items = UserDefaults.standard.data(forKey: "bill") {
                        
            if let decoded = try? decoder.decode([Reservation].self, from: items) {
                global.reservationHolder = decoded
                        }
                }
        // Do any additional setup after loading the view.
    }
     
    override func viewWillAppear(_ animated: Bool) {
        tableViewOne.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        global.reservationHolder.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! CoolCell
        
        cell.configure(lane: String(global.reservationHolder[indexPath.row].getLane()),name: global.reservationHolder[indexPath.row].name)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        global.idrow = Int(indexPath.row)
        
        performSegue(withIdentifier: "hairyBalls", sender: nil)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            global.reservationHolder.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
            
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if let encoded = try? encoder.encode(global.reservationHolder) {
                            UserDefaults.standard.set(encoded, forKey: "bill")
                        }
    }
    
}
