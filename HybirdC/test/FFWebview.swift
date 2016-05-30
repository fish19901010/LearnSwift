//
//  FFWebview.swift
//  HybirdC
//
//  Created by fish on 16/5/26.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFWebview: UIViewController {
    //MARK: ---------  Properties  ---------
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let webView:UIWebView = UIWebView.init()
        webView.frame = self.view.bounds
        let url:NSURL = NSURL.init(string: "http://baidu.com")!
        let urlRequest:NSURLRequest = NSURLRequest.init(URL: url)
        webView.loadRequest(urlRequest)
        
        self.view.addSubview(webView)
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
}
