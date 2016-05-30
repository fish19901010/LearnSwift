//
//  FFTextField.swift
//  HybirdC
//
//  Created by fish on 16/5/26.
//  Copyright © 2016年 fish group. All rights reserved.
//


import UIKit

class FFTextField: UIViewController, UITextFieldDelegate{
    //MARK: ---------  Properties  ---------
    let textField:UITextField = UITextField.init()
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let btn:UIButton = UIButton.init(type:UIButtonType.System)
        btn.backgroundColor = UIColor.clearColor()
        btn.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(FFTextField.backgroundBtnClicked), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        textField.frame = CGRectMake(0, 0, SCREENWIDTH-60, 50)
        textField.center = self.view.center
        textField.keyboardType = UIKeyboardType.NumberPad
        textField.placeholder = "请输入手机号"
        textField.backgroundColor = UIColor.init(white: 1, alpha: 0.4)
        textField.textColor = UIColor.blackColor()
        textField.layer.cornerRadius = 5
        self.view.addSubview(textField)
        
        let passwordField:UITextField = UITextField.init()
        passwordField.frame = CGRectMake(0, 0, SCREENWIDTH-60, 50)
        passwordField.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/2+70)
        passwordField.secureTextEntry = true
        passwordField.placeholder = "请输入手机号"
        passwordField.backgroundColor = UIColor.init(white: 1, alpha: 0.4)
        passwordField.textColor = UIColor.blackColor()
        passwordField.layer.cornerRadius = 5
        passwordField.delegate = self
        self.view.addSubview(passwordField)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    func backgroundBtnClicked(){
        self.view.endEditing(true)
    }
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
    func textFieldDidBeginEditing(textField: UITextField) {
        UIView.animateWithDuration(0.3) {
            var frame:CGRect = self.view.frame
            frame.origin.y = -216
            self.view.frame = frame
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        UIView.animateWithDuration(0.3) {
            self.view.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)
        }
    }
}