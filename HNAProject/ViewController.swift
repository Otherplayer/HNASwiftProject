//
//  ViewController.swift
//  HNAProject
//
//  Created by __无邪_ on 2017/9/7.
//  Copyright © 2017年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: HNAViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        self.navBarColor = UIColor.randomColor
        print(self.navBarColor)
        
        self.title = "Demo"
        self.btnRight.setTitle("fff", for: UIControlState.normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gotoSubAction(_ sender: Any) {
        let ctrl = ViewController()
        self.navigationController?.pushViewController(ctrl, animated: true)
    }
    
    override func rightAction() {
        print("ssssss")
    }
    
    
    
}


extension UIColor {
    class var randomColor: UIColor {
        get {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
}
