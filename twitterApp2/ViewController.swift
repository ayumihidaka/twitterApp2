//
//  ViewController.swift
//  twitterApp2
//
//  Created by あゆみ on 2015/09/12.
//  Copyright (c) 2015年 あゆみ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailimage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailimage.sd_setImageWithURL(NSURL(string:"http://nekogazou.com/wp-content/uploads/2013/07/0142.jpg"))
       
    }

}

