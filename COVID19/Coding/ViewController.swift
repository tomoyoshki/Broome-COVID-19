//
//  ViewController.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/16.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import Firebase
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var bingbutton: UIButton!
    @IBOutlet weak var depbutton: UIButton!
    @IBOutlet weak var jsbutton: UIButton!
    @IBOutlet weak var unionbutton: UIButton!
    @IBOutlet weak var dibutton: UIButton!
    @IBOutlet weak var vebutton: UIButton!
    @IBOutlet weak var enbutton: UIButton!
    @IBOutlet weak var chbutton: UIButton!
    @IBOutlet weak var kirkbutton: UIButton!
    @IBOutlet weak var mainbutton: UIButton!
    @IBOutlet weak var nanbutton: UIButton!
    @IBOutlet weak var barbutton: UIButton!
    @IBOutlet weak var fenbutton: UIButton!
    @IBOutlet weak var libutton: UIButton!
    @IBOutlet weak var winbutton: UIButton!
    @IBOutlet weak var tributton: UIButton!
    @IBOutlet weak var colebutton: UIButton!
    @IBOutlet weak var sanbutton: UIButton!
    @IBOutlet weak var conbutton: UIButton!
    @IBOutlet weak var whitneypoint: UIButton!
    
    let webview = WKWebView()
    
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    @IBAction func binghamton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "binghamton", sender: self)
    }
    

    @IBAction func johnsoncity(_ sender: Any) {
        self.performSegue(withIdentifier: "johnsoncity", sender: self)
    }
    
    @IBAction func union(_ sender: Any) {
        self.performSegue(withIdentifier: "union", sender: self)
    }
    
    @IBAction func dickinson(_ sender: Any) {
        self.performSegue(withIdentifier: "dickinson", sender: self)
    }
    
    @IBAction func vestal(_ sender: Any) {
        self.performSegue(withIdentifier: "vestal", sender: self)
    }
    
    @IBAction func endicott(_ sender: Any) {
        self.performSegue(withIdentifier: "endicott", sender: self)
    }
    
    @IBAction func chenango(_ sender: Any) {
        self.performSegue(withIdentifier: "chenango", sender: self)
    }
    
    @IBAction func kirkwood(_ sender: Any) {
        self.performSegue(withIdentifier: "kirkwood", sender: self)
    }
    
    @IBAction func maine(_ sender: Any) {
        self.performSegue(withIdentifier: "maine", sender: self)
    }
    
    
    @IBAction func nanticote(_ sender: Any) {
        self.performSegue(withIdentifier: "nanticote", sender: self)
    }
    
    
    @IBAction func barker(_ sender: Any) {
        self.performSegue(withIdentifier: "barker", sender: self)
    }
    
    @IBAction func fenton(_ sender: Any) {
        self.performSegue(withIdentifier: "fenton", sender: self)
    }
    
    @IBAction func deposit(_ sender: Any) {
        self.performSegue(withIdentifier: "deposit", sender: self)
    }
    @IBAction func lisle(_ sender: Any) {
        self.performSegue(withIdentifier: "lisle", sender: self)
    }
    
    
    @IBAction func windsor(_ sender: Any) {
        self.performSegue(withIdentifier: "windsor", sender: self)
    }
    
    
    @IBAction func triangle(_ sender: Any) {
        self.performSegue(withIdentifier: "triangle", sender: self)
    }
    
    @IBAction func colesville(_ sender: Any) {
        self.performSegue(withIdentifier: "colesville", sender: self)
    }
    
    @IBAction func sanford(_ sender: Any) {
        self.performSegue(withIdentifier: "sanford", sender: self)
    }
    
    @IBAction func conklin(_ sender: Any) {
        self.performSegue(withIdentifier: "conklin", sender: self)
    }
    
    @IBAction func whitneypoint(_ sender: Any) {
        self.performSegue(withIdentifier: "whitneypoint", sender: self)
    }
    
    
    
    
    
    //@IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("date").observe(.value, with: { (snapshot) in
            let concase = snapshot.value as! String
            print(concase)
            self.date.text = "As of "+concase+"/20 at 2:00PM"
        })
        styleButton(_button: bingbutton)
        styleButton(_button: jsbutton)
        styleButton(_button: unionbutton)
        styleButton(_button: dibutton)
        styleButton(_button: mainbutton)
        styleButton(_button: kirkbutton)
        styleButton(_button: chbutton)
        styleButton(_button: enbutton)
        styleButton(_button: vebutton)
        styleButton(_button: sanbutton)
        styleButton(_button: colebutton)
        styleButton(_button: tributton)
        styleButton(_button: winbutton)
        styleButton(_button: libutton)
        styleButton(_button: fenbutton)
        styleButton(_button: barbutton)
        styleButton(_button: nanbutton)
        styleButton(_button: conbutton)
        styleButton(_button: whitneypoint)
        styleButton(_button: depbutton)
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        if #available(iOS 13.0, *) {
            return  .darkContent
        }
        return .default
    }
    
    func styleButton(_button:UIButton) {
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
        _button.layer.cornerRadius = 20
    }


}

