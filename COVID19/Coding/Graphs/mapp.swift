//
//  statsone.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import WebKit
import Firebase

class mapp: UIViewController , UIScrollViewDelegate{
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var imgv: UIView!
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
           return imgv
       }
    
    @IBOutlet weak var wind: UILabel!
    @IBOutlet weak var viwind: UILabel!
    @IBOutlet weak var di: UILabel!
    @IBOutlet weak var port: UILabel!
    @IBOutlet weak var bingcity: UILabel!
    @IBOutlet weak var bingtown: UILabel!
    @IBOutlet weak var kirk: UILabel!
    @IBOutlet weak var con: UILabel!
    @IBOutlet weak var dep: UILabel!
    @IBOutlet weak var san: UILabel!
    @IBOutlet weak var jc: UILabel!
    @IBOutlet weak var en: UILabel!
    @IBOutlet weak var ves: UILabel!
    @IBOutlet weak var un: UILabel!
    @IBOutlet weak var cole: UILabel!
    @IBOutlet weak var fen: UILabel!
    @IBOutlet weak var chen: UILabel!
    @IBOutlet weak var maine: UILabel!
    @IBOutlet weak var nan: UILabel!
    @IBOutlet weak var barker: UILabel!
    @IBOutlet weak var lislebig: UILabel!
    @IBOutlet weak var lislesmall: UILabel!
    @IBOutlet weak var triangle: UILabel!
    @IBOutlet weak var wp: UILabel!
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        scroll.delegate = self
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Lisle").child("Active").observe(.value, with: { (snapshot) in
            let concase = snapshot.value as! Int
   
            self.lislebig.text = "\(concase)"
            self.colorDec(lab: self.lislebig, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Lisle").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            self.lislesmall.text = "\(concase)"
            self.colorDec(lab: self.lislesmall, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Triangle").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.triangle.text = "\(concase)"
            self.colorDec(lab: self.triangle, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Whitney Point").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.wp.text = "\(concase)"
            self.colorDec(lab: self.wp, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Barker").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.barker.text = "\(concase)"
            self.colorDec(lab: self.barker, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Nanticoke").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.nan.text = "\(concase)"
            self.colorDec(lab: self.nan, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Maine").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.maine.text = "\(concase)"
            self.colorDec(lab: self.maine, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Chenango").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.chen.text = "\(concase)"
            self.colorDec(lab: self.chen, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Fenton").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.fen.text = "\(concase)"
            self.colorDec(lab: self.fen, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Colesville").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.cole.text = "\(concase)"
            self.colorDec(lab: self.cole, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Union").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.un.text = "\(concase)"
            self.colorDec(lab: self.un, num: concase)
        })
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Endicott").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.en.text = "\(concase)"
            self.colorDec(lab: self.en, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Vestal").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.ves.text = "\(concase)"
            self.colorDec(lab: self.ves, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Johnson City").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.jc.text = "\(concase)"
            self.colorDec(lab: self.jc, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Sanford").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.san.text = "\(concase)"
            self.colorDec(lab: self.san, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Deposit").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.dep.text = "\(concase)"
            self.colorDec(lab: self.dep, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Conklin").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.con.text = "\(concase)"
            self.colorDec(lab: self.con, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Kirkwood").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.kirk.text = "\(concase)"
            self.colorDec(lab: self.kirk, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("City of Binghamton").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.bingcity.text = "\(concase)"
            self.colorDec(lab: self.bingcity, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Binghamton").child("Active").observe(.value, with: { (snapshot) in
            let texta = snapshot.value as! Int
            self.bingtown.text = "\(texta)"
            self.colorDec(lab: self.bingtown, num: texta)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Dickinson").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.di.text = "\(concase)"
            self.colorDec(lab: self.di, num: concase)
        })
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Port Dickinson").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.port.text = "\(concase)"
            self.colorDec(lab: self.port, num: concase)
        })
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Town of Windsor").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.wind.text = "\(concase)"
            self.colorDec(lab: self.wind, num: concase)
        })
        ref = Database.database().reference()
        databaseHandle = ref?.child("City").child("Village of Windsor").child("Active").observe(.value, with: { (snapshot) in
            
            let concase = snapshot.value as! Int
            
            self.viwind.text = "\(concase)"
            self.colorDec(lab: self.viwind, num: concase)
        })
    }
    func colorDec(lab: UILabel, num: Int){
        if(num>30){
            lab.textColor = UIColor(named: "over30")
            lab.layer.cornerRadius = 0.5 * lab.bounds.size.width
            
            lab.layer.masksToBounds = true
            lab.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        }
        else if(num>20&&num<=30){
            lab.textColor = UIColor(named: "twnthir")
            lab.layer.cornerRadius = 0.5 * (lab.bounds.size.width - 3)
            
            lab.layer.masksToBounds = true
            lab.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        }
        else if(num>10&&num<=20){
            lab.textColor = UIColor(named: "tentwn")
            lab.layer.cornerRadius = 0.5 * (lab.bounds.size.width) - 5
            
            lab.layer.masksToBounds = true
            lab.backgroundColor = UIColor.red.withAlphaComponent(0.2)
        }
        else if(num>0&&num<=10){
            lab.textColor = UIColor(named: "zenin")
            lab.layer.cornerRadius = 0.5 * (lab.bounds.size.width - 7)
            
            lab.layer.masksToBounds = true
            if(num>5) {
                lab.backgroundColor = UIColor.red.withAlphaComponent(0.1)
            }
            else {
                lab.backgroundColor = UIColor.red.withAlphaComponent(0.05)
            }
                
        }
        else{
            lab.textColor = UIColor(named: "zero")
            lab.layer.cornerRadius = 0.5 * lab.bounds.size.width
            
            lab.layer.masksToBounds = true
        }
    }
    /*func styleButton(_button: UIButton) {
        _button.layer.cornerRadius = _button.frame.size.width / 2
        _button.layer.masksToBounds = true
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
    }*/
}
