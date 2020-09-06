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

class decemberincrease: UIViewController, ChartViewDelegate{
    var barChart = BarChartView()
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var entreis = [ChartDataEntry]()
    var flag = false

    
    @IBOutlet weak var dateI: UILabel!
    @IBOutlet weak var num: UILabel!
    
    @IBOutlet weak var cs: UIButton!
    @IBAction func update(_ sender: Any) {
        dateI.isHidden = false
        for date in 1...31 {
            flag = true
            ref = Database.database().reference()
            ref?.child("Stats").child("December").child(String(date)).child("Increase").observe(.value, with: { (snap) in
             let hehe = snap.value as! Double
             self.num.text = String(hehe)
                if(hehe > -1)
                {
                self.entreis.append(BarChartDataEntry(x:Double(date), y:hehe))
                self.viewDidLayoutSubviews()
                }
            })
        }
        cs.isHidden = true
        num.isHidden = true
    }
    override func viewDidLoad() {
        barChart.delegate = self
        styleButton(_button: cs)
        dateI.isHidden = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if(flag) {
            barChart.frame = CGRect(x:0, y:0, width: self.view.frame.size.width-40, height: self.view.frame.size.width)
            
                view.addSubview(barChart)
                barChart.center = view.center
                view.addSubview(barChart)
            let set = BarChartDataSet(entries: entreis)
            set.colors = ChartColorTemplates.material()
            let data = BarChartData(dataSet: set)
            barChart.data = data
        }}
    func styleButton(_button: UIButton) {
        _button.layer.cornerRadius = _button.frame.size.width / 2
        _button.layer.masksToBounds = true
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
    }
}
