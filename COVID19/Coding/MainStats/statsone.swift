//
//  statsone.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase

class statsone: UIViewController {
    

    
    @IBAction func refresher(_ sender: Any) {
        self.viewDidLoad()
    }
    @IBOutlet weak var confirmed: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    //@IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databaseHandle = ref?.child("Overall").child("Active").observe(.value, with: { (snapshot) in
            let concase = snapshot.value as! Int
            self.confirmed.text = "\(concase)"
            print("It is \(concase)")
        })
    }
}
