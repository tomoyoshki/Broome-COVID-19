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

class hospitalization: UIViewController, ChartViewDelegate{
    var pieChart = PieChartView()
    var yes = Double()
    var no = Double()
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var yestring = String()
    var nostring = String()

    
    @IBOutlet weak var yess: UILabel!
    @IBOutlet weak var noo: UILabel!
    @IBOutlet weak var hospitalization: UIButton!
    
    override func viewDidLoad() {
        styleButton(_button: hospitalization)
        pieChart.delegate = self
        ref = Database.database().reference()
        databaseHandle = ref?.child("Hospitalization").child("Yes").observe(.value, with: { (snap) in
         let hehe = snap.value as! Double
         self.yess.text = "\(hehe)"
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("Hospitalization").child("No").observe(.value, with: { (snap) in
         let hehe = snap.value as! Double
         self.noo.text = "\(hehe)"
        })
    }
    
    override func viewDidLayoutSubviews() {
        if(yes>0&&no>0) {
            pieChart.frame = CGRect(x:0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.width)
                pieChart.centerAttributedText = NSAttributedString(string: (hospitalization.titleLabel?.text)!)
                               view.addSubview(pieChart)
            pieChart.center = view.center
                view.addSubview(pieChart)

            let set = PieChartDataSet(entries: [
                PieChartDataEntry(value: yes, label:"Yes"),
                PieChartDataEntry(value: no, label:"No"),
            ])
            set.colors = ChartColorTemplates.joyful()
            let data = PieChartData(dataSet: set)
            pieChart.data = data
        }
    }
    
    @IBAction func update(_ sender: Any) {
        cao1()
        yess.isHidden = true
        noo.isHidden = true
        hospitalization.isHidden = true
        viewDidLayoutSubviews()
        
    }
    func cao1() {
        yestring = yess.text!
        yes = Double(yestring)!
        nostring = noo.text!
        no = Double(nostring)!
    }
    func styleButton(_button: UIButton) {
        _button.layer.cornerRadius = _button.frame.size.width / 2
        _button.layer.masksToBounds = true
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
    }
}
