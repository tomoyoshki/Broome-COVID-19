//
//  statsone.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit
import SafariServices

class contact: UIViewController {
    
    @IBOutlet weak var covidresources: UIButton!
    @IBAction func covidbutton(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/resources#Mental%20Health%20Resources")
    }
    
    @IBOutlet weak var healthcarefoods: UIButton!
    @IBAction func healthcarebutton(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/resources#Access%20to%20Healthcare")
    }
    
    @IBOutlet weak var coping: UIButton!
    @IBAction func copingbutton(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/mh/coronavirus/resources")
    }
    
    @IBOutlet weak var tested: UIButton!
    @IBAction func tested(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus#GET%20TESTED")
    }
    
    @IBOutlet weak var donation: UIButton!
    @IBAction func donation(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/get_involved")
    }
    
    @IBOutlet weak var hdbutton: UIButton!
    @IBAction func hdcontact(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/contact")
    }
    
    @IBOutlet weak var menhealth: UIButton!
    @IBAction func menbutton(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/resources#Mental%20Health%20Resources")
    }
    
    @IBOutlet weak var busi: UIButton!
    @IBAction func bus(_ sender: Any) {
        showSafariVC(for: "https://theagency-ny.com/broome-county-binghamton-economic-business-news/highlight-resources-for-businesses-affected-by-covid-19")
    }
    @IBOutlet weak var meal: UIButton!
    @IBAction func meal(_ sender: Any) {
        showSafariVC(for: "http://gobroomecounty.com/hd/release/covid_school_meals?_ga=2.224084315.1701156319.1587264087-1087898340.1587088513")
    }
    
    
    @IBOutlet weak var senior: UIButton!
    @IBAction func seniors(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/resources#Resources%20for%20Seniors")
    }
    
    
    @IBOutlet weak var sf: UIButton!
    @IBAction func sf(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/resources#Resources%20for%20Students%20and%20Families")
    }
    
    @IBOutlet weak var muns: UIButton!
    @IBAction func mun(_ sender: Any) {
        showSafariVC(for: "http://www.wicz.com/story/41901090/list-of-coronavirusrelated-changes-for-broome-municipalities")
    }
    
    @IBOutlet weak var faq: UIButton!
    @IBAction func faq(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/faq")
    }
    
    @IBOutlet weak var new: UIButton!
    @IBAction func news(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/news")
    }
    
    @IBOutlet weak var give: UIButton!
    @IBAction func givehelp(_ sender: Any) {
        showSafariVC(for: "https://www.uwbroome.org/GIVEHELP/")
    }
    
    @IBOutlet weak var emerge: UIButton!
    @IBAction func emergency(_ sender: Any) {
        showSafariVC(for: "http://www.gobroomecounty.com/hd/coronavirus/orders")
    }
    
    override func viewDidLoad() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        sb(_button: emerge)
        sb(_button: new)
        sb(_button: give)
        sb(_button: faq)
        sb(_button: muns)
        sb(_button: sf)
        sb(_button: senior)
        sb(_button: menhealth)
        sb(_button: busi)
        sb(_button: meal)
        sb(_button: hdbutton)
        sb(_button: donation)
        sb(_button: coping)
        sb(_button: healthcarefoods)
        sb(_button: covidresources)
        sb(_button: tested)
    }
    
    func sb(_button:UIButton) {
        _button.layer.borderColor = UIColor.black.cgColor
        _button.layer.borderWidth = 1
        _button.layer.cornerRadius = 20
    }
    
    func showSafariVC(for url: String){
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url:url)
        present(safariVC, animated: true)
    }
    
}
