//
//  statsthree.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase

class statsthree: UIViewController {
    
    
    @IBAction func refresher3(_ sender: Any) {
        self.viewDidLoad()
    }
    @IBOutlet weak var deaths: UILabel!
    var ref: DatabaseReference?
        var databaseHandle:DatabaseHandle?
        var postData = [String]()
        //@IBOutlet var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            ref = Database.database().reference()
            databaseHandle = ref?.child("Overall").child("Death").observe(.value, with: { (snapshot) in
                
                let concase = snapshot.value as! Int
                print(concase)
                self.deaths.text = "\(concase)"
            })
        }
    }
