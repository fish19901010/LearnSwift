//
//  FFPicker.swift
//  HybirdC
//
//  Created by fish on 16/5/25.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFPicker: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    //MARK: ---------  Properties  ---------
    let picker:UIPickerView = UIPickerView.init()
    let label:UILabel = UILabel.init()
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        picker.frame = CGRectMake(0, 60, SCREENWIDTH, SCREENWIDTH)
        picker.dataSource = self;
        picker.delegate = self;
        self.view.addSubview(picker)
        
        label.frame = CGRectMake(0, 0, 300, 60)
        label.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/4*3)
        label.numberOfLines = 0
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.init(white: 1, alpha: 0.4)
        label.clipsToBounds = true
        label.layer.cornerRadius = 10
        self.view.addSubview(label)
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
    //MARK: UIPickerView DataSouce
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    //MARK: UIPickerView Delegate
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let title = "c:\(component) r:\(row)"
        return title
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = "component: \(component)     row: \(row)"
    }
    
}
