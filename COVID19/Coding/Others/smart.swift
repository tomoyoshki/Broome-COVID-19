//
//  binghamtonview.swift
//
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//

import UIKit
import Firebase
class smart: UIViewController {
    
   
    @IBOutlet weak var image: UIImageView!
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, animations: {
            self.image.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.image.alpha = 0.001
        }) { (success) in
            self.performSegue(withIdentifier: "launch", sender: self)
        }
    }
}
