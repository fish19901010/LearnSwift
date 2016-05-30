//
//  UpdateVC.swift
//  HybirdC
//
//  Created by fish on 16/5/12.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class UpdateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.darkGrayColor()
        
//        let label = UILabel();
//        
//        label.backgroundColor = UIColor.whiteColor()
//        label.text = "click"
//        label.textColor = UIColor.redColor()
//        label.frame = CGRectMake(0, 20, 320, 300)
//        label.textAlignment = NSTextAlignment.Center
//        
//        self.view.addSubview(label)
        
        
        let btn = UIButton.init(type: UIButtonType.Custom)
        btn.backgroundColor = UIColor.whiteColor()
        btn.setTitle("click", forState: UIControlState.Normal)
        btn.titleLabel?.textColor = UIColor.blackColor()
        btn.frame = CGRectMake(0, 20, 320, 300)
        btn.center = self.view.center
        btn.titleLabel?.textAlignment = NSTextAlignment.Center
        btn.addTarget(self, action: #selector(UpdateVC.clickAction), forControlEvents: UIControlEvents.TouchUpInside)

        self.view.addSubview(btn)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    func clickAction() -> Void {
        NSLog("click Action")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}