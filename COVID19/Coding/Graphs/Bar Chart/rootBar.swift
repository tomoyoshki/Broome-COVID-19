//
//  totalcaseViewController.swift
//  COVID19
//
//  Created by Tomoyoshi Kimura on 2020/4/19.
//  Copyright © 2020 Tomoyoshi Kimura. All rights reserved.
//

import UIKit

class rootBar: UIPageViewController, UIPageViewControllerDataSource {
    
    lazy var viewControllerList: [UIViewController] = {
        let sb = UIStoryboard(name: "map", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "barmarch")
        let vc2 = sb.instantiateViewController(withIdentifier: "barapril")
        let vc3 = sb.instantiateViewController(withIdentifier: "barmay")
        let vc4 = sb.instantiateViewController(withIdentifier: "barjune")
        let vc5 = sb.instantiateViewController(withIdentifier: "barjuly")
        let vc6 = sb.instantiateViewController(withIdentifier: "baraugust")
        let vc7 = sb.instantiateViewController(withIdentifier: "barseptember")
        let vc8 = sb.instantiateViewController(withIdentifier: "baroctober")
        let vc9 = sb.instantiateViewController(withIdentifier: "barnovember")
        let vc10 = sb.instantiateViewController(withIdentifier: "bardecember")
        
        return [vc1, vc2, vc3, vc4,vc5,vc6,vc7,vc8,vc9,vc10]
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
