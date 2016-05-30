//
//  FFCamera.swift
//  HybirdC
//
//  Created by fish on 16/5/25.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFCamera: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: ----------  Properties  ----------
    let imageView:UIImageView = UIImageView.init()
    
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let btn:UIButton = UIButton.init(type:UIButtonType.System)
        btn.setTitle("拍照", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.init(white: 1, alpha: 0.7)
        btn.titleLabel?.textColor = UIColor.blackColor()
        btn.frame = CGRectMake(0, 0, 200, 40)
        btn.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/5*4)
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(FFCamera.takePhotoByCamera), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        let btn2:UIButton = UIButton.init(type:UIButtonType.System)
        btn2.setTitle("从相册选择", forState: UIControlState.Normal)
        btn2.backgroundColor = UIColor.init(white: 1, alpha: 0.7)
        btn2.titleLabel?.textColor = UIColor.blackColor()
        btn2.frame = CGRectMake(0, 0, 200, 40)
        btn2.center = CGPointMake(SCREENWIDTH/2, SCREENHEIGHT/5*4+50)
        btn2.layer.cornerRadius = 10
        btn2.clipsToBounds = true
        btn2.addTarget(self, action: #selector(FFCamera.selectPhotoFormLirbary), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn2)
        
        imageView.frame = CGRectMake(0, 60, SCREENWIDTH, SCREENWIDTH)
        self.view.addSubview(imageView)

        
    }
    
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ----------  ActionFunc  ----------
    func takePhotoByCamera() {
        print("拍照")
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            let takePic:UIImagePickerController = UIImagePickerController.init()
            takePic.delegate = self
            takePic.sourceType = UIImagePickerControllerSourceType.Camera
            self.presentViewController(takePic, animated: true, completion: { () -> Void in
                
            })
        }else{
            let alert = UIAlertController.init(title: "错误提示", message: "设备没有拍照功能", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction.init(title: "确定", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) in
                print("点击了确定")
            }))
            
            self.presentViewController(alert, animated: true) {
                
            }
        }
        
    }
    
    func selectPhotoFormLirbary() {
        print("从相册选择")
        let takePic:UIImagePickerController = UIImagePickerController.init()
        takePic.delegate = self
        takePic.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(takePic, animated: true, completion: { () -> Void in
            
        })
    }
    //MARK: ----------  DataService  ----------
    
    //MARK: ----------  Delegate  ----------
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imageView.image = image;
        print("选取了图片")
        print(editingInfo)
        picker.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        print("取消")
        picker.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }
}