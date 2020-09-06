//
//  union.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/20.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase
class endicott: UIViewController {
    
    
    @IBOutlet weak var confirmedCase: UILabel!
    @IBOutlet weak var cumulativecases: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    
     override func viewDidLoad() {
           super.viewDidLoad()
           ref = Database.database().reference()
           databaseHandle = ref?.child("City").child("Village of Endicott").child("Active").observe(.value, with: { (snapshot) in
               
               let concase = snapshot.value as! Int
               print(concase)
               self.confirmedCase.text = "Active Cases: \(concase)"
           })
           ref = Database.database().reference()
           databaseHandle = ref?.child("City").child("Village of Endicott").child("Cumulative").observe(.value, with: { (snapshot) in
               
               let concase = snapshot.value as! Int
               print(concase)
               self.cumulativecases.text = "Cumulative Confirmed Cases: \(concase)"
           })
       }
}
