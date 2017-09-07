//
//  HNAViewController.swift
//  HNAProject
//
//  Created by __无邪_ on 2017/9/7.
//  Copyright © 2017年 __无邪_. All rights reserved.
//

import UIKit

class HNAViewController: UIViewController {
    
    // MARK: -
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.hidesBottomBarWhenPushed = true
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: -
    private let btnWidth: CGFloat = 44
    private let btnMargin: CGFloat = 10
    
    override func loadView() {
        super.loadView()
        self.configBasicView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - public
    public var navBarColor: UIColor {get{
            return self.navBar.backgroundColor!;
        }set{
            self.navBar.backgroundColor = newValue
        }
    }
//    override var title: String? {get{
//            return self.navTitle.text
//        }set{
//            self.navTitle.text = newValue
//        }
//    }
    
    // MARK: - lazy loading configure
    lazy var navBar: UIImageView = {
        self.navBar = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: 64))
        self.navBar.backgroundColor = UIColor.green
        self.navBar.isUserInteractionEnabled = true
        self.view.addSubview(self.navBar)
        return self.navBar
    }()
    lazy var btnLeft: UIButton = {
        self.btnLeft = UIButton.init(frame: CGRect.init(x: self.btnMargin, y: 20, width: self.btnWidth, height: self.btnWidth))
        self.btnLeft.backgroundColor = UIColor.orange
        self.btnLeft.addTarget(self, action: #selector(HNAViewController.leftAction), for: UIControlEvents.touchUpInside)
        self.navBar.addSubview(self.btnLeft)
        return self.btnLeft
    }()
    lazy var btnRight: UIButton = {
        self.btnRight = UIButton.init(frame: CGRect.init(x: self.view.bounds.width - self.btnWidth - self.btnMargin, y: 20, width: self.btnWidth, height: self.btnWidth))
        self.btnRight.backgroundColor = UIColor.cyan
        self.btnRight.setTitle("fun", for: UIControlState.normal)
        self.btnRight.addTarget(self, action: #selector(HNAViewController.rightAction), for: UIControlEvents.touchUpInside)
        self.navBar.addSubview(self.btnRight)
        return self.btnRight
    }()
    lazy var navTitle: UILabel = {
        self.navTitle = UILabel.init(frame: CGRect.init(x: self.btnMargin * 2 + self.btnWidth, y: 20, width: self.view.bounds.width - self.btnMargin * 4 - self.btnWidth * 2, height: self.btnWidth))
        self.navTitle.textAlignment = .center
        self.navTitle.backgroundColor = UIColor.yellow
        self.navTitle.textColor = UIColor.red
        self.navTitle.font = UIFont.systemFont(ofSize: 18, weight: UIFontWeightMedium)
        self.navBar.addSubview(self.navTitle)
        return self.navTitle
    }()
    
    func configBasicView() {
        // 自定义NavBar
        self.btnLeft.setTitle("<", for: UIControlState.normal)
    }
    
    // MARK: - Action
    
    open func leftAction() {
        self.navigationController?.popViewController(animated: true)
    }
    open func rightAction() {
        
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
