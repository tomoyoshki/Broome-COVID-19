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

class aprilgraph: UIViewController, ChartViewDelegate{
    var lineChart = LineChartView()
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var entreis = [ChartDataEntry]()
    var flag = false

    
    @IBOutlet weak var aprildate: UILabel!
    @IBOutlet weak var num: UILabel!
    
    @IBOutlet weak var cs: UIButton!
    @IBAction func update(_ sender: Any) {
        aprildate.isHidden = false
        flag = true
        for date in 1...30 {
            ref = Database.database().reference()
            databaseHandle = ref?.child("Stats").child("April").child(String(date)).child("Active").observe(.value, with: { (snap) in
             let hehe = snap.value as! Double
             self.num.text = String(hehe)
                if(hehe > 0)
                {
                self.entreis.append(ChartDataEntry(x:Double(date), y:hehe))
                self.viewDidLayoutSubviews()
                }
            })
        }
        cs.isHidden = true
        num.isHidden = true
    }
    override func viewDidLoad() {
        lineChart.delegate = self
        styleButton(_button: cs)
        aprildate.isHidden = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if(flag) {
            lineChart.frame = CGRect(x:0, y:0, width: self.view.frame.size.width-50, height: self.view.frame.size.width)
            
                view.addSubview(lineChart)
                lineChart.center = view.center
                view.addSubview(lineChart)
            let set = LineChartDataSet(entries: entreis)
            set.colors = ChartColorTemplates.pastel()
            let data = LineChartData(dataSet: set)
            lineChart.data = data
        }}
    func styleButton(_button: UIButton) {
        _button.layer.cornerRadius = _button.frame.size.width / 2
        _button.layer.masksToBounds = true
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
    }
}
