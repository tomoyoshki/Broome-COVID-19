//
//  johnsoncity.swift
//
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//

import UIKit
import Firebase
class conklin: UIViewController {
    
    
    @IBOutlet weak var cumulativecases: UILabel!
    @IBOutlet weak var confirmed: UILabel!
    var ref: DatabaseReference?
        var databaseHandle:DatabaseHandle?
        var postData = [String]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            ref = Database.database().reference()
            databaseHandle = ref?.child("City").child("Town of Conklin").child("Active").observe(.value, with: { (snapshot) in
                
                let concase = snapshot.value as! Int
                print(concase)
                self.confirmed.text = "Active Cases: \(concase)"
            })
            ref = Database.database().reference()
            databaseHandle = ref?.child("City").child("Town of Conklin").child("Cumulative").observe(.value, with: { (snapshot) in
                
                let concase = snapshot.value as! Int
                print(concase)
                self.cumulativecases.text = "Cumulative Confirmed Cases: \(concase)"
            })
        }
    }
