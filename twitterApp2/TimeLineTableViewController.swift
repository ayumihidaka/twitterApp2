//
//  TimeLineTableViewController.swift
//  twitterApp2
//
//  Created by あゆみ on 2015/09/12.
//  Copyright (c) 2015年 あゆみ. All rights reserved.
//

import UIKit

class TimeLineTableViewController: UITableViewController {
    
    
    let dataArray:[[String:String]] = [["title":"タイトル1","image":"http://nekogazou.com/wp-content/uploads/2013/07/0142.jpg"],["title":"タイトル2","image":"http://xn--48s17vxvep85c.com/wp-content/uploads/2013/09/Vjjx8sf.jpg"]]
    
    //テーブルの件数を登録
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    //テーブルの内容を代入
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //セルを内部的にリサイクルしているのでこちらが必須になります。
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        
        if let title = dataArray[indexPath.row]["title"]{
            cell.textLabel?.text = title
        }
        
        if let urlString = dataArray[indexPath.row]["image"]{
            cell.imageView?.sd_setImageWithURL(NSURL(string: "urlString"))
            cell.imageView?.sd_setImageWithURL(NSURL(string: urlString), placeholderImage: UIImage(named:"placeholder"))
            
            cell.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        }
        
        return cell
    }

}

//if let imageURLString = dataArray[indexPath.row]["image"], let imageURL = NSURL(string: imageURLString){
//    cell.imageView?.sd_setImageWithURL(imageURL, placeholderImage: UIImage(named: "placeholder"))
//}