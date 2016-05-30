//
//  FFTable.swift
//  HybirdC
//
//  Created by fish on 16/5/26.
//  Copyright © 2016年 fish group. All rights reserved.
//

import UIKit

class FFTable: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //MARK: ---------  Properties  ---------
    let tableView:UITableView = UITableView.init()
    //MARK: ----------  UIConfig  ----------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        tableView.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        let nib = UINib(nibName: "FFTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "FFTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: ---------  ActionFunc  ---------
    
    //MARK: ---------  DataService  --------
    
    //MARK: ----------  Delegate  ----------
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier:NSString = "FFTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier as String,forIndexPath: indexPath) as! FFTableViewCell
        cell.contentLabel!.text = "index:\(indexPath.row)"
        cell.selectionStyle = UITableViewCellSelectionStyle.None;

        return cell
    }
}
