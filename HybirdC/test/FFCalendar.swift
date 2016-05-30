//
//  FFCalendar.swift
//  HybirdC
//
//  Created by fish on 16/5/24.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFCalendar: UIViewController {

    var calender:UIDatePicker = UIDatePicker.init()
    
    var label:UILabel = UILabel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        calender.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT/2)
//        calender.delete(self)
        calender.addTarget(self, action: #selector(FFCalendar.datePickerValueChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(calender)
        
        
        label.frame = CGRectMake(0, 0, 300, 60)
        label.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/2)
        label.numberOfLines = 0
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.init(white: 1, alpha: 0.4)
        label.clipsToBounds = true
        label.layer.cornerRadius = 10
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func datePickerValueChanged(datePicker: UIDatePicker) {
        let str = "\(datePicker.date.descriptionWithLocale(NSLocale.init(localeIdentifier: "zh")))"
        label.text = str
    }
}