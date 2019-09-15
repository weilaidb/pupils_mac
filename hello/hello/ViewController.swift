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
        button.addTarget(self, action: #selector(ViewController.buttonTap), for: UIControlEvents.touchUpInside)
        
        //button1 :点击有参数
        let button1 = UIButton(frame: CGRect(x:50, y:100,width: 300,height: 100))
        button1.backgroundColor = UIColor.green
        button1.addTarget(self, action: #selector(ViewController.buttonTap1(button:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(button)
        self.view.addSubview(button1)
        
        
        
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

