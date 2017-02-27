//
//  ViewController.swift
//  SMPagerTabViewDemo
//
//  Created by SevenWang on 2017/2/23.
//  Copyright © 2017年 SevenWang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SMPagerTabViewDelegate {
    @IBOutlet weak var pagerSuperView: UIView!
    var pagerTabView:SMPagerTabView!
    let pages: [UIViewController] = {
        let one:TestViewController = TestViewController()
        one.view.backgroundColor = UIColor.purple
        one.title = "文章"
        let two:TestViewController = TestViewController()
        two.view.backgroundColor = UIColor.red
        two.title = "问答"
        let three:TestViewController = TestViewController()
        three.view.backgroundColor = UIColor.yellow
        three.title = "医生"
        let four:TestViewController = TestViewController()
        four.view.backgroundColor = UIColor.orange
        four.title = "医院"
        return [one,two,three,four]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setView() -> () {
        pagerTabView = SMPagerTabView.init(frame: CGRect.init(x: 0, y: 0, width: pagerSuperView.frame.width, height: pagerSuperView.frame.height))
        pagerSuperView.addSubview(pagerTabView)
        pagerTabView.delegate = self
        pagerTabView.tabButtonFontSize = 13
        pagerTabView.tabBackgroundColor = UIColor.white
        pagerTabView.tabButtonTitleColorForSelected = UIColor.blue
        pagerTabView.tabButtonTitleColorForNormal = UIColor.gray
        pagerTabView.selectedLineWidth = pagerSuperView.frame.width / 4.0
        pagerTabView.tabMargin = 0.1
        pagerTabView.selectedLineColor = UIColor.blue
        pagerTabView.bodyMargin = 2
        pagerTabView.backgroundColor = UIColor.gray
        
        pagerTabView.buildUI()
        pagerTabView.selectTab(with: 0, animate: false)
    }

    func number(ofPagers view: SMPagerTabView!) -> UInt {
        print(self.pages.count)
        return UInt(self.pages.count)
    }
    
    func pagerView(ofPagers view: SMPagerTabView!, indexOfPagers number: UInt) -> UIViewController! {
        let index:Int = Int(number)
        return self.pages[index]
    }


}

