//
//  FFNetworking.swift
//  HybirdC
//
//  Created by fish on 16/5/26.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFNetworking: UIViewController {
    //MARK: ---------  Properties  ---------
    let temLabel:UILabel = UILabel.init()
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let btn:UIButton = UIButton.init(type:UIButtonType.System)
        btn.backgroundColor = UIColor.clearColor()
        btn.frame = CGRectMake(0, 0, 200, 50)
        btn.center = self.view.center
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor.init(white: 1, alpha: 0.7)
        btn.addTarget(self, action: #selector(FFNetworking.btnClicked), forControlEvents: UIControlEvents.TouchUpInside)
        btn.layer.cornerRadius = 10
        btn.setTitle("发送请求", forState: UIControlState.Normal)
        self.view.addSubview(btn)
        
        temLabel.frame = CGRectMake(0, 0, 300, 200)
        temLabel.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/2+140)
        temLabel.numberOfLines = 0
        temLabel.font = UIFont.systemFontOfSize(14)
        temLabel.textAlignment = NSTextAlignment.Center
        temLabel.textColor = UIColor.blackColor()
        temLabel.backgroundColor = UIColor.init(white: 1, alpha: 0.4)
        temLabel.clipsToBounds = true
        temLabel.layer.cornerRadius = 10
        self.view.addSubview(temLabel)
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    func btnClicked(){
        print("send")
        
        //请求的参数
        let dic:NSMutableDictionary = NSMutableDictionary()
        dic.setValue("13052221309", forKey: "tel")
        
        let manager:AFHTTPSessionManager = AFHTTPSessionManager.init()
        manager.responseSerializer = AFHTTPResponseSerializer.init()
        
        manager.GET("http://121.40.69.97:3010/wcr040?tel=13052221309", parameters: nil, success: { (task, responseObject) in
            print("response:\(String(responseObject))")
//            let responseData = responseObject as! NSData!
            let dic:NSDictionary = try!NSJSONSerialization.JSONObjectWithData(responseObject as! NSData, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
            
            print("resStr:\(dic)")
            self.temLabel.text = String(dic)
        }, failure: { (task, error) in
            print("error:\(error)")
        })
        
        
    }
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
}
