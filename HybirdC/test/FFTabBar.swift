//
//  FFTabBar.swift
//  HybirdC
//
//  Created by fish on 16/5/26.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFTabBar: UITabBarController {
    //MARK: ---------  Properties  ---------
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let subcontroller:UIViewController = UIViewController.init()
        subcontroller.title = "Control1"
        subcontroller.view.backgroundColor = UIColor.whiteColor()
        
        let subcontroller2:UIViewController = UIViewController.init()
        subcontroller2.title = "Control2"
        subcontroller2.view.backgroundColor = UIColor.grayColor()
        
        let subcontroller3:UIViewController = UIViewController.init()
        subcontroller3.title = "Control3"
        subcontroller3.view.backgroundColor = UIColor.blackColor()

        self.setViewControllers([subcontroller,subcontroller2,subcontroller3], animated: true)
        
        
        let barItem:UITabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarSystemItem.Downloads, tag: 2000)
        subcontroller.tabBarItem = barItem
        
        let barItem2:UITabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 3000)
        subcontroller2.tabBarItem = barItem2
        
        let barItem3:UITabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarSystemItem.Contacts, tag: 4000)
        subcontroller3.tabBarItem = barItem3

    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
}
