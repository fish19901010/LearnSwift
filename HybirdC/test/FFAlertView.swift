//
//  FFAlertView.swift
//  HybirdC
//
//  Created by fish on 16/5/20.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFAlertView: UIViewController {
    
    let btn:UIButton = UIButton.init(type: UIButtonType.System)
    let btn2:UIButton = UIButton.init(type: UIButtonType.System)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        btn.frame = CGRectMake(0, 0, 200, 60)
        btn.center = self.view.center
        btn.backgroundColor = UIColor.whiteColor()
        btn.setTitle("点击弹窗", forState: UIControlState.Normal)
        btn.addTarget(self, action: #selector(FFAlertView.clickAction), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn)
        
        btn2.frame = CGRectMake(0, 0, 200, 60)
        btn2.center = CGPointMake(self.view.center.x, self.view.bounds.height/5*3)
        btn2.backgroundColor = UIColor.whiteColor()
        btn2.setTitle("点击弹窗", forState: UIControlState.Normal)
        btn2.addTarget(self, action: #selector(FFAlertView.clickAction2), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn2)
        
    }
    
    func clickAction() {
        let alert = UIAlertController.init(title: "这是title", message: "这是message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction.init(title: "确定", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) in
            self.btn.setTitle("点击了确定", forState: UIControlState.Normal)
        }))
        alert.addAction(UIAlertAction.init(title: "取消", style: UIAlertActionStyle.Cancel, handler: { (UIAlertAction) in
            self.btn.setTitle("点击了取消", forState: UIControlState.Normal)
        }))
        
        self.presentViewController(alert, animated: true) { 
            
        }
    }
    
    func clickAction2() {
        let actionSheet = UIAlertController.init(title: "这是title", message: "这是message", preferredStyle: UIAlertControllerStyle.ActionSheet)
        actionSheet.addAction(UIAlertAction.init(title: "1111", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) in
            self.btn2.setTitle("点击了1111", forState: UIControlState.Normal)
        }))
        actionSheet.addAction(UIAlertAction.init(title: "2222", style: UIAlertActionStyle.Destructive, handler: { (UIAlertAction) in
            self.btn2.setTitle("点击了2222", forState: UIControlState.Normal)
        }))
        actionSheet.addAction(UIAlertAction.init(title: "3333", style: UIAlertActionStyle.Cancel, handler: { (UIAlertAction) in
            self.btn2.setTitle("点击了3333", forState: UIControlState.Normal)
        }))
        
        self.presentViewController(actionSheet, animated: true) {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}