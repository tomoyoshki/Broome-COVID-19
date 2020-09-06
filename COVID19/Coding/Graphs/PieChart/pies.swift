//
//  pies.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/23.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import Foundation
import Charts
import Firebase

class pies: UIViewController, ChartViewDelegate{
    var pieChart = PieChartView()
    var pieactive = Double()
    var pierecovered = Double()
    var piedeaths = Double()
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var destring = String()
    var acstring = String()
    var restring = String()

    
    @IBOutlet weak var active: UILabel!
    @IBOutlet weak var recovered: UILabel!
    @IBOutlet weak var deaths: UILabel!
    
    @IBOutlet weak var cs: UIButton!
    @IBAction func update(_ sender: Any) {
        cao1()
        cs.isHidden = true
        active.isHidden = true
        recovered.isHidden = true
        deaths.isHidden = true
        viewDidLayoutSubviews()
        
    }
    
    override func viewDidLoad() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        pieChart.delegate = self
        ref = Database.database().reference()
        styleButton(_button: cs)
        databaseHandle = ref?.child("Overall").child("Active").observe(.value, with: { (snap) in
         let hehe = snap.value as! Double
         self.active.text = "\(hehe)"
        })
        ref = Database.database().reference()
                   databaseHandle = ref?.child("Overall").child("Recovered").observe(.value, with: { (snap) in
                    let hehe = snap.value as! Double
                    self.recovered.text = "\(hehe)"
                   })
        ref = Database.database().reference()
                   databaseHandle = ref?.child("Overall").child("Death").observe(.value, with: { (snap) in
                       let hehe = snap.value as! Double
                       self.deaths.text = "\(hehe)"
                   })
    }
    
    override func viewDidLayoutSubviews() {
        if(piedeaths>0&&pierecovered>0&&pieactive>0) {
            pieChart.frame = CGRect(x:0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.width)
            pieChart.centerAttributedText = NSAttributedString(string: (cs.titleLabel?.text)!)
                           view.addSubview(pieChart)
                pieChart.center = view.center
                view.addSubview(pieChart)

            let set = PieChartDataSet(entries: [
                PieChartDataEntry(value: pieactive, label:"Active"),
                PieChartDataEntry(value: pierecovered, label:"Recovered"),
                PieChartDataEntry(value: piedeaths, label: "Deaths"),
            ])
            set.colors = ChartColorTemplates.material()
            let data = PieChartData(dataSet: set)
            pieChart.data = data
        }
    }
    func cao1() {
        destring = deaths.text!
        piedeaths = Double(destring)!
        restring = recovered.text!
        pierecovered = Double(restring)!
        acstring = active.text!
        pieactive = Double(acstring)!
    }
    func styleButton(_button: UIButton) {
        _button.layer.cornerRadius = _button.frame.size.width / 2
        _button.layer.masksToBounds = true
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
    }
}
