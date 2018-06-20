//
//  ViewController.swift
//  TechPod
//
//  Created by Marina Goto on 2018/06/17.
//  Copyright © 2018年 lifeistech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //曲名を入れるための配列
    var songNameArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //テーブルビューのデータソースメソッドはViewControllerクラスに書く
        table.dataSource = self
        
        //テーブルビューのデリゲートメソッドはViewControllerメソッドに書く
        table.delegate = self
        
        //songNameArrayに曲名を入れていく
        songNameArray = ["カレン","エリーゼのために","G線上のアリア"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //セルの数をsongNameArrayの数にする
        return songNameArray.count
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //セルにsongNameArrayの曲名を表示する
        cell?.textLabel?.text = songNameArray[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(songNameArray[indexPath.row])が選ばれました！")
    }


}

