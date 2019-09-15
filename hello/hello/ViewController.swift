//
//  ViewController.swift
//  hello
//
//  Created by weilai on 19/9/10.
//  Copyright © 2019年 weilai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hello world")
        print("view did load")
        //replace 'Selector("buttonTap") with '#selector(ViewController.buttonTap)'
        //button 点击无参数
        let button = UIButton(frame: CGRect(x:50,y:200,width:300,height:100))
        button.backgroundColor = UIColor.yellow
        button.setTitle("睡前故事", for: UIControlState.normal)
        button.addTarget(self, action: #selector(ViewController.buttonTap), for: UIControlEvents.touchUpInside)
        
        //button1 :点击有参数
        let button1 = UIButton(frame: CGRect(x:50, y:100,width: 300,height: 100))
        button1.backgroundColor = UIColor.green
        button1.setTitle("天气", for: UIControlState.normal)
        button1.addTarget(self, action: #selector(ViewController.buttonTap1(button:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(button)
        self.view.addSubview(button1)
        
        setupButton()
        
    }
    func setupButton() {
        
        let images = ["publish-video","publish-picture","publish-text","publish-audio","publish-review","publish-offline"]
        let titles = ["发视频","发图片","发段子","发声音","审帖","离线下载"]
        // 每行放多少个
        let maxCols:CGFloat = 3
        // 间隔
        let buttonMargn:CGFloat = 15
        // 按钮宽
        let buttonW:CGFloat = (UIScreen.main.bounds.width - (maxCols + 1)*buttonMargn)/3
        // 按钮高
        let buttonH = buttonW + 30
        
        let buttonSpace:CGFloat = (UIScreen.main.bounds.width - buttonW * maxCols - buttonMargn * 2)/(maxCols - 1)
        
        let startY:CGFloat = UIScreen.main.bounds.height / 2 - buttonW
        
        for i in 0..<images.count {
            let button = UIButton()
            button.setTitle(titles[i], for: .normal)
            button.setTitleColor(UIColor.black, for: .normal)
            button.setImage(UIImage.init(named: images[i]), for: .normal)
            
            let row = i / Int(maxCols)
            let col = CGFloat(i).truncatingRemainder(dividingBy: maxCols)
            
            let x = buttonMargn + col * (buttonSpace + buttonW)
            let y = startY + CGFloat(row) * (buttonH + buttonMargn)
            let w = buttonW
            let h = buttonH
            
            button.frame = CGRect(x: x, y: y, width: w, height: h)
            view.addSubview(button)
            
        }
    }
    
    
    @IBAction func pushButtonTestTouchDown(_ sender: Any) {
        print("pushButton test touch down")
    }
    
    
    @IBAction func pushButtonTestTouchCancel(_ sender: Any) {
        print("pushButton test touch cancel")
    }
    @IBAction func pushButtonTestTouchUpInside(_ sender: Any) {
        print("pushButton test touch up inside")
    }
    @IBAction func pushButtonTestTouchUpOutSide(_ sender: Any) {
        print("pushButton test touch up outside")
    }
    @IBAction func pushButtonTestTouchDragInside(_ sender: Any) {
        print("pushButton test touch drag inside")
    }
    @IBAction func pushButtonTestTouchDragEnter(_ sender: Any) {
        print("pushButton test touch drag enter")
    }
    @IBAction func pushButtonTestValueChanged(_ sender: Any) {
        print("pushButton test value changed")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("memory low,warning!!!")
    }

    //selector 其实是 Objective-C runtime 的概念
    @objc func buttonTap() {
        print("buttonTap")
    }
    
    @objc func buttonTap1(button:UIButton) {
        print("buttonTap参数")
    }

}

