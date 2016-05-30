//
//  ViewController.swift
//  HybirdC
//
//  Created by fish on 16/5/12.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    var array:NSArray = NSArray(arrayLiteral:
                                "Swift 调用 OC |TestOC",
                                "XIB ViewController |XIB",
                                "路径动画 |UIBezierPath",
                                "指示器 |ActivityIndicator",
                                "提醒对话框 |AlertView",
                                "按钮 |Button",
                                "日历 |Calendar",
                                "选择器 |Picker",
                                "相机 |Camera",
                                "滚动视图 |ScrollView",
                                "分段选择 |Segment",
                                "滑杆 |Slider",
                                "选项卡 |TabBar",
                                "文字输入框 |TextField",
                                "网页 |Webview",
                                "侧栏 |SideMenu",
                                "列表 |Table",
                                "网络请求 |Networking")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier:NSString = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier as String)
        if cell==nil{
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: identifier as String)
            cell?.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15)
            cell?.selectionStyle = UITableViewCellSelectionStyle.Default
            cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            cell?.backgroundColor = UIColor.clearColor()
        }
        cell?.textLabel?.text = array[indexPath.row] as? String

        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("index:\(indexPath.row),\(array[indexPath.row])")
//        NSLog("index:%d,%@", indexPath.row,array[indexPath.row])
        NSLog("click")
        
        var fileName = "\(array[indexPath.row])"
        let nameArr = fileName.componentsSeparatedByString("|")
        fileName = nameArr[1]
        var viewController:UIViewController
        if indexPath.row == 0 {
            //跳转OC方法
            //定义类名
            let className = "\(fileName)ViewController"
            //类名转化成对象
            let aClass:AnyClass = NSClassFromString(className)!
            let nsobjectype : UIViewController.Type = aClass as! UIViewController.Type
            //创建VC
            viewController = nsobjectype.init()
            
        }else{
            //跳转Swift方法
            //定义类名
            let className = "HybirdC.FF\(fileName)"
            let aClass:AnyClass = NSClassFromString(className)!
            let nsobjectype : UIViewController.Type = aClass as! UIViewController.Type
            
            viewController = nsobjectype.init()
            
        }
        
        //设置title
        viewController.title = array[indexPath.row] as? String;
        //跳转
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

