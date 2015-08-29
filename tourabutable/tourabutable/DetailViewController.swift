//
//  DetailViewController.swift
//  tourabutable
//
//  Created by sensei on 2015/08/29.
//  Copyright (c) 2015年 sensei. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルに表示するテキスト　plist置換予定
    let texts = [
        "三日月宗近",
        "小狐丸",
        "石切丸",
        "岩融",
        "今剣"
    ]
    
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    // セルの内容を変更
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }
    
    // スクロール位置の調整
    override func viewDidLayoutSubviews() {
        var len: CGFloat = self.topLayoutGuide.length;
        self.tableView.contentInset = UIEdgeInsets(top: len,left: 0,bottom: 0,right: 0)
    }
}

