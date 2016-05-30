//
//  FFSlider.swift
//  HybirdC
//
//  Created by fish on 16/5/25.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFSlider: UIViewController {
    //MARK: ---------  Properties  ---------
    let slider:UISlider = UISlider.init()
    let temLabel:UILabel = UILabel.init()
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        slider.frame = CGRectMake(0, 0, SCREENWIDTH/3*2, 30)
        slider.center = self.view.center
        slider.addTarget(self, action: #selector(FFSlider.sliderValueChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(slider)
        
        
        temLabel.frame = CGRectMake(0, 0, 200, 30)
        temLabel.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/4*3)
        temLabel.numberOfLines = 0
        temLabel.textAlignment = NSTextAlignment.Center
        temLabel.textColor = UIColor.blackColor()
        temLabel.backgroundColor = UIColor.init(white: 1, alpha: 0.4)
        temLabel.clipsToBounds = true
        temLabel.layer.cornerRadius = 10
        temLabel.text = "0.00"
        self.view.addSubview(temLabel)
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    func sliderValueChanged(slider:UISlider){
        let value = slider.value*100
        temLabel.text = String(format: "%.2f", value)
    }
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
}
