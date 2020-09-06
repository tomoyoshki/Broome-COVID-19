//
//  totalcaseViewController.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit

class rootPie: UIPageViewController, UIPageViewControllerDataSource {
    
    lazy var viewControllerList: [UIViewController] = {
        let sb = UIStoryboard(name: "map", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "casestatus")
        let vc2 = sb.instantiateViewController(withIdentifier: "hospitalization")
        
        return [vc1, vc2]
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.dataSource = self
        
        if let firstViewController = viewControllerList.first{
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }

    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.firstIndex(of: viewController) else {return nil}
        
        let nextIndex = vcIndex + 1
        
        
        guard viewControllerList.count != nextIndex else{return nil}
        
        guard viewControllerList.count > nextIndex else{return nil}
        
        return viewControllerList[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.firstIndex(of: viewController) else {return nil}
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else{return nil}
        
        guard viewControllerList.count > previousIndex else{return nil}
        
        return viewControllerList[previousIndex]
        
    
    }
}
