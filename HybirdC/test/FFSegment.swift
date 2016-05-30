//
//  FFSegment.swift
//  HybirdC
//
//  Created by fish on 16/5/25.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFSegment: UIViewController {
    //MARK: ---------  Properties  ---------
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let segment:UISegmentedControl = UISegmentedControl.init(items: ["1","2","3","4","5"])
        
        for index in 0...4 {
            segment.setWidth(50, forSegmentAtIndex: index)
        }
        segment.center = self.view.center
        self.view.addSubview(segment)
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
}
