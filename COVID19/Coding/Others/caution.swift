//
//  statsone.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import SafariServices

class caution: UIViewController {
    @IBOutlet weak var infobutton: UIButton!
    
    @IBAction func infoclick(_ sender: Any) {
        showSafariVC(for: "https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html")
    }
    
    func showSafariVC(for url: String){
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url:url)
        present(safariVC, animated: true)
    }
    
    override func viewDidLoad() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        infobutton.layer.borderColor = UIColor.blue.cgColor
        infobutton.layer.borderWidth = 1
        infobutton.layer.cornerRadius = 30
    }
}
