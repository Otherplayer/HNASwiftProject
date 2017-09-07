//
//  HNATabBarController.swift
//  HNAProject
//
//  Created by __无邪_ on 2017/9/7.
//  Copyright © 2017年 __无邪_. All rights reserved.
//

import UIKit

class HNATabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // 背景图颜色
        UITabBar.appearance().tintColor = UIColor.red
        UITabBar.appearance().barTintColor = UIColor.orange
        
        // 字体颜色
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.groupTableViewBackground],
                                                         for: UIControlState.normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.red],
                                                         for: UIControlState.selected)
        
        self.tabBar.isTranslucent = true;
        self.tabBar.alpha = 0.92;
        
        let circleWidth: CGFloat = 58.0
        let fun = UIView.init(frame: CGRect.init(x: (self.view.bounds.width - circleWidth) / 2, y: -circleWidth/3, width: circleWidth, height: circleWidth))
        fun.backgroundColor = UIColor.red
        fun.layer.cornerRadius = circleWidth/2
        fun.layer.masksToBounds = true
        self.tabBar.addSubview(fun)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
