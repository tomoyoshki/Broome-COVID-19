//
//  union.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/20.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase
class windsor: UIViewController {
    
    
    
    @IBOutlet weak var towncumulative: UILabel!
    @IBOutlet weak var villageconfirmed: UILabel!
    @IBOutlet weak var townconfirmed: UILabel!
    @IBOutlet weak var villagecumulative: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Windsor").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.townconfirmed.text = "Active Cases: \(concase)"
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Windsor").child("Cumulative").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.towncumulative.text = "Cumulative Confirmed Cases: \(concase)"
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Windsor").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.villageconfirmed.text = "Active Cases: \(concase)"
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Windsor").child("Cumulative").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.villagecumulative.text = "Cumulative Confirmed Cases: \(concase)"
        })
    }
}
