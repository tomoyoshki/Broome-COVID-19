//
//  statsone.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import SafariServices
import Firebase

class statistics: UIViewController {
    //@IBOutlet weak var chartView: MacawChartView!
    public var recovered = Double()
    var restring = String()
    public var actives = Double()
    var acstring = String()
    public var deathss = Double()
    var destring = String()
    
    @IBAction func xiwang(_ sender: Any) {
        performSegue(withIdentifier: "pies", sender: self)
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
    }
}
/*chartView.contentMode = .scaleAspectFit
MacawChartView.playAnimation()*/
