//
//  union.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/20.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase
class chenango: UIViewController {
    
    
    
    @IBOutlet weak var cumulativecase: UILabel!
    @IBOutlet weak var confirmedCase: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Chenango").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.confirmedCase.text = "Active Cases: \(concase)"
        })
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Chenango").child("Cumulative").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.cumulativecase.text = "Cumulative Confirmed Cases: \(concase)"
        })
    }
}
