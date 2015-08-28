//
//  ViewController.swift
//  tourabutable
//
//  Created by sensei on 2015/08/28.
//  Copyright (c) 2015年 sensei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        "今剣",
        "にっかり青江",
        "鳴狐",
        "一期一振",
        "鯰尾藤四郎",
        "骨喰藤四郎",
        "平野藤四郎",
        "厚藤四郎",
        "前田藤四郎",
        "秋田藤四郎",
        "博多藤四郎",
        "乱藤四郎",
        "五虎退",
        "薬研藤四郎",
        "鶯丸",
        "明石国行",
        "蛍丸",
        "愛染国俊",
        "蜻蛉切",
        "燭台切光忠",
        "江雪左文字",
        "宗三左文字",
        "小夜左文字",
        "加州清光",
        "大和守安定",
        "歌仙兼定",
        "和泉守兼定",
        "陸奥守吉行",
        "山姥切国広",
        "山伏国広",
        "堀川国広",
        "蜂須賀虎徹",
        "浦島虎徹",
        "長曽祢虎徹",
        "大倶利伽羅",
        "へし切長谷部",
        "獅子王",
        "同田貫正国",
        "鶴丸国永",
        "太郎太刀",
        "次郎太刀",
        "日本号",
        "御手杵",
        ""
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

