//
//  FFScrollView.swift
//  HybirdC
//
//  Created by fish on 16/5/25.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFScrollView: UIViewController,UIScrollViewDelegate {
    //MARK: ---------  Properties  ---------
    let scrollView:UIScrollView = UIScrollView.init()
    let fixLabel:UILabel = UILabel.init()
    let scrollLabel:UILabel = UILabel.init()
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        scrollView.frame = self.view.bounds
        scrollView.contentSize = CGSizeMake(SCREENWIDTH*4, SCREENHEIGHT-64)
        scrollView.pagingEnabled = true
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        
        for index in 0...3 {
            let temLabel:UILabel = UILabel.init()
            let x = SCREENWIDTH * CGFloat(index)
            temLabel.frame = CGRectMake(x, 0, SCREENWIDTH, SCREENHEIGHT-64)
            temLabel.numberOfLines = 0
            temLabel.textAlignment = NSTextAlignment.Center
            temLabel.textColor = UIColor.blackColor()
            temLabel.backgroundColor = UIColor.init(white: 0.25*CGFloat(index+1), alpha: 0.5)
            temLabel.clipsToBounds = true
            temLabel.layer.cornerRadius = 10
            temLabel.text = "这是第\(index+1)页"
            scrollView.addSubview(temLabel)
        }
        
        
        fixLabel.frame = CGRectMake(0, 0, 200, 50)
        fixLabel.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/4*3)
        fixLabel.numberOfLines = 0
        fixLabel.textAlignment = NSTextAlignment.Center
        fixLabel.textColor = UIColor.blackColor()
        fixLabel.backgroundColor = UIColor.init(white: 1, alpha: 0.5)
        fixLabel.clipsToBounds = true
        fixLabel.text = "当前在1页"
        fixLabel.layer.cornerRadius = 10
        self.view.addSubview(fixLabel)
        
        scrollLabel.frame = CGRectMake(0, 0, 200, 50)
        scrollLabel.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/4*3+70)
        scrollLabel.numberOfLines = 0
        scrollLabel.textAlignment = NSTextAlignment.Center
        scrollLabel.textColor = UIColor.blackColor()
        scrollLabel.backgroundColor = UIColor.init(white: 1, alpha: 0.5)
        scrollLabel.clipsToBounds = true
        scrollLabel.text = "当前在1页滑动"
        scrollLabel.layer.cornerRadius = 10
        self.view.addSubview(scrollLabel)
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let index = scrollView.contentOffset.x/SCREENWIDTH
        fixLabel.text = "当前在\(Int(index+1))页"
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let index = scrollView.contentOffset.x/SCREENWIDTH
        let scrollOff = (index-CGFloat(Int(index)))*100
        scrollLabel.text = "滑动了\(String(format: "%.2f", scrollOff))%"
    }
}
