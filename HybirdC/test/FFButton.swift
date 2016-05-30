//
//  FFButton.swift
//  HybirdC
//
//  Created by fish on 16/5/20.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFButton: UIViewController {
    let btn:UIButton = UIButton.init(type: UIButtonType.System)
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        btn.frame = CGRectMake(0, 0, 200, 60)
        btn.center = self.view.center
        btn.backgroundColor = UIColor.whiteColor()
        btn.setTitle("这是一个按钮", forState: UIControlState.Normal)
        btn.addTarget(self, action: #selector(FFButton.clickAction), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn)
    }
    
    func clickAction() {
        count += 1
        let titleStr:NSString = NSString.init(format: "你点解了%d次", count)
        self.btn.setTitle(titleStr as String, forState: UIControlState.Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
