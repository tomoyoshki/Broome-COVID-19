//
//  binghamtonview.swift
//  
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//

import UIKit
import Firebase
class binghamtonview: UIViewController {
    
    @IBOutlet weak var townconfirmed: UILabel!
    @IBOutlet weak var towncumulative: UILabel!
    @IBOutlet weak var cityconfirmed: UILabel!
    @IBOutlet weak var citycumulative: UILabel!
    
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("City of Binghamton").child("Active").observe(.value, with: { (snapshot) in
            let concase = snapshot.value as! Int
            print(concase)
            self.cityconfirmed.text = "Active Cases: \(concase)"
        })
        databaseHandle = ref?.child("City").child("Town of Binghamton").child("Active").observe(.value, with: { (snapshot) in
            let texta = snapshot.value as! Int
            self.townconfirmed.text = "Active Cases: \(texta)"
        })
        databaseHandle = ref?.child("City").child("Town of Binghamton").child("Cumulative").observe(.value, with: { (snapshot) in
            let texta = snapshot.value as! Int
            self.towncumulative.text = "Cumulative Confirmed Cases: \(texta)"
        })
        
        databaseHandle = ref?.child("City").child("City of Binghamton").child("Cumulative").observe(.value, with: { (snapshot) in
            let texta = snapshot.value as! Int
            self.citycumulative.text = "Cumulative Confirmed Cases: \(texta)"
        })
    }
}
