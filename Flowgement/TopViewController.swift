//
//  ViewController.swift
//  Flowgement
//
//  Created by mat4645 on 2018/11/04.
//  Copyright © 2018年 MAT0622. All rights reserved.
//

import UIKit

class TopViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        //選択したアイコンの色
        UITabBar.appearance().tintColor = UIColor(red: 163/255, green: 188/255, blue: 226/255, alpha: 1.0)

        //背景の色
        UITabBar.appearance().barTintColor = UIColor(red: 66/255, green: 74/255, blue: 93/255, alpha: 1.0)
  
        // Do any additional setup after loading the view, typically from a nib.
    }


}

