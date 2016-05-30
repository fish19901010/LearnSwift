//
//  FFActivityIndicator.swift
//  HybirdC
//
//  Created by fish on 16/5/15.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFActivityIndicator: UIViewController {
    
    let activity:UIActivityIndicatorView = UIActivityIndicatorView.init(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
//    (activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        // Do any additional setup after loading the view, typically from a nib.
     
        //添加activity
        self.view.addSubview(activity)
        
        activity.frame = CGRectMake(0, 0, 100, 100)
        activity.backgroundColor = UIColor.init(white: 0, alpha: 0.3)
        activity.layer.cornerRadius = 5
        activity.center = self.view.center
        activity.startAnimating()
        
        //创建控制按钮，开始，暂停
        let 开始:UIButton = UIButton.init(type: UIButtonType.System)
        开始.backgroundColor = UIColor.whiteColor()
        开始.titleLabel?.textColor = UIColor.blackColor()
        开始.setTitle("开始动画", forState: UIControlState.Normal)
        开始.frame = CGRectMake(0, 0, 100, 60)
        开始.center = CGPointMake(self.view.bounds.width/5*4, self.view.bounds.height/3*2)
        self.view.addSubview(开始)
        开始.addTarget(self, action: #selector(FFActivityIndicator.开始), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        let 日🐶:UIButton = UIButton.init(type: UIButtonType.System)
        日🐶.backgroundColor = UIColor.whiteColor()
        日🐶.titleLabel?.textColor = UIColor.blackColor()
        日🐶.setTitle("日🐶", forState: UIControlState.Normal)
        日🐶.frame = CGRectMake(0, 0, 100, 60)
        日🐶.center = CGPointMake(self.view.bounds.width/5*1, self.view.bounds.height/3*2)
        self.view.addSubview(日🐶)
        日🐶.addTarget(self, action: #selector(FFActivityIndicator.日🐶), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func 开始()->Void{
        activity.startAnimating()
    }
    
    func 日🐶()->Void{
        activity.stopAnimating()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

