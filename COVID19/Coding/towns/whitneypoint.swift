//
//  union.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/20.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase
class whitneypoint: UIViewController {
    
    
    @IBOutlet weak var confirmedCase: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    @IBOutlet weak var cumulativecases: UILabel!
    var postData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Whitney Point").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.confirmedCase.text = "Active Cases: \(concase)"
        })
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Whitney Point").child("Cumulative").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.cumulativecases.text = "Cumulative Confirmed Cases: \(concase)"
        })
    }
}
