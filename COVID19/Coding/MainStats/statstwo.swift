//
//  statstwo.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase

class statstwo: UIViewController {
    
    
    @IBAction func refresher1(_ sender: Any) {
        self.viewDidLoad()
    }
    @IBOutlet weak var recovered: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    //@IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databaseHandle = ref?.child("Overall").child("Recovered").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            print(concase)
            self.recovered.text = "\(concase)"
        })
    }
}
