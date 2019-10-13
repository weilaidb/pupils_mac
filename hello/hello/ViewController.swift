//
//  ViewController.swift
//  hello
//
//  Created by weilai on 19/9/10.
//  Copyright © 2019年 weilai. All rights reserved.
//

import UIKit

extension UIDevice{
    var deviceName: String{
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let platform = withUnsafePointer(to: &systemInfo.machine.0) { ptr in
            return String(cString: ptr)
        }
        switch platform {
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":  return "iPhone 4"
        case "iPhone4,1":  return "iPhone 4s"
        case "iPhone5,1":  return "iPhone 5"
        case "iPhone5,2":  return "iPhone 5 (GSM+CDMA)"
        case "iPhone5,3":  return "iPhone 5c (GSM)"
        case "iPhone5,4":  return "iPhone 5c (GSM+CDMA)"
        case "iPhone6,1":  return "iPhone 5s (GSM)"
        case "iPhone6,2":  return "iPhone 5s (GSM+CDMA)"
        case "iPhone7,2":  return "iPhone 6"
        case "iPhone7,1":  return "iPhone 6 Plus"
        case "iPhone8,1":  return "iPhone 6s"
        case "iPhone8,2":  return "iPhone 6s Plus"
        case "iPhone8,4":  return "iPhone SE"
        case "iPhone9,1":  return "国行、日版、港行iPhone 7"
        case "iPhone9,2":  return "港行、国行iPhone 7 Plus"
        case "iPhone9,3":  return "美版、台版iPhone 7"
        case "iPhone9,4":  return "美版、台版iPhone 7 Plus"
        case "iPhone10,1", "iPhone10,4":   return "iPhone 8"
        case "iPhone10,2", "iPhone10,5":   return "iPhone 8 Plus"
        case "iPhone10,3", "iPhone10,6":   return "iPhone X"
        case "iPhone11,2":   return "iPhone XS"
        case "iPhone11,4", "iPhone11,6":   return "iPhone XS MAX"
        case "iPhone11,8":   return "iPhone XR"
            
            
        case "iPad1,1":   return "iPad"
        case "iPad1,2":   return "iPad 3G"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":   return "iPad 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":  return "iPad Mini"
        case "iPad3,1", "iPad3,2", "iPad3,3":  return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":  return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":  return "iPad Air"
        case "iPad4,4", "iPad4,5", "iPad4,6":  return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":  return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":  return "iPad Mini 4"
        case "iPad5,3", "iPad5,4":  return "iPad Air 2"
        case "iPad6,3", "iPad6,4":  return "iPad Pro 9.7"
        case "iPad6,7", "iPad6,8":  return "iPad Pro 12.9"
        case "iPad6,11", "iPad6,12":  return "iPad 5"
        case "iPad7,1", "iPad7,2":   return "iPad Pro 12.9-inch 2nd-gen"
        case "iPad7,3", "iPad7,4":   return "iPad Pro 10.5"
        case "iPad7,5", "iPad7,6":   return "iPad 6"
            
            
        case "AppleTV2,1":  return "Apple TV 2"
        case "AppleTV3,1", "AppleTV3,2":  return "Apple TV 3"
        case "AppleTV5,3":   return "Apple TV 4"
        case "i386", "x86_64":   return "Simulator"
            
        case "iPod1,1":  return "iPod Touch 1"
        case "iPod2,1":  return "iPod Touch 2"
        case "iPod3,1":  return "iPod Touch 3"
        case "iPod4,1":  return "iPod Touch 4"
        case "iPod5,1":  return "iPod Touch (5 Gen)"
        case "iPod7,1":  return "iPod Touch 6"
            
        default:  return platform
            
        }
        
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hello world")
        print("view did load")
        //replace 'Selector("buttonTap") with '#selector(ViewController.buttonTap)'
        //button 点击无参数
//        let button = UIButton(frame: CGRect(x:50,y:100,width:300,height:100))
//        button.backgroundColor = UIColor.yellow
//        button.setTitle("Hangge", for: UIControlState.normal)
//        button.addTarget(self, action: #selector(ViewController.buttonTap), for: UIControlEvents.touchUpInside)
//
//        //button1 :点击有参数
//        let button1 = UIButton(frame: CGRect(x:50, y:300,width: 300,height: 100))
//        button1.backgroundColor = UIColor.blue
//        button1.setTitle("搜索", for: UIControlState.normal)
//        button1.addTarget(self, action: #selector(ViewController.buttonTap1(button:)), for: UIControlEvents.touchUpInside)
//
//        //buttonx :点击有参数
//        let button2 = UIButton(frame: CGRect(x:50, y:900,width: 300,height: 100))
//        button2.backgroundColor = UIColor.green
//        button2.setTitle("GITHUB", for: UIControlState.normal)
//        button2.addTarget(self, action: #selector(ViewController.buttonTap2(button:)), for: UIControlEvents.touchUpInside)
//
//        self.view.addSubview(button)
//        self.view.addSubview(button1)
//        self.view.addSubview(button2)
//
        

        
//        setupButtonInfo1(x: 50, y: 200, width: 300, height: 100, title: "搜索", color: UIColor.green)
//        setupButtonInfo2(x: 50, y: 300, width: 300, height: 100, title: "GITHUB", color: UIColor.yellow)
        
//        setupButton()
        
        
//        var loginButton:UIButton = UIButton(type: UIButtonType.roundedRect)
//        loginButton.frame = CGRectMake(
//            0,
//            passwordTextField.frame.origin.y
//                + passwordTextField.frame.height
//                + textFieldPaddingY*2,
//            passwordTextField.frame.width - 40,
//            usernameTextField.frame.height)
      
        
        //the main button definition
        buttonSets()
        
        appleinfo()
        
        print("deviceName:\(UIDevice.current.deviceName)")
        
    }
    
    func appleinfo()
    {
        //获取设备名称
        let deviceName = UIDevice.current.name
        print("deviceName:\(deviceName)")
        //获取系统名称
        let sysName = UIDevice.current.systemName
        print("sysName:\(sysName)")
        //获取系统版本
        let sysVersion = UIDevice.current.systemVersion
        print("sysVersion:\(sysVersion)")
        //获取设备唯一标识符
        let deviceUUID = UIDevice.current.identifierForVendor?.uuidString
        print("deviceUUID:\(deviceUUID!)")
        //获取设备的型号
        let deviceModel = UIDevice.current.model
        print("deviceModel:\(deviceModel)")
        //电池电量
        //UIDevice.current.isBatteryMonitoringEnabled 方法必须使用
        UIDevice.current.isBatteryMonitoringEnabled = true
        let batteryLevel = UIDevice.current.batteryLevel
        print("batteryLevel:\(batteryLevel)")
        //电池状态
        let batteryState = UIDevice.current.batteryState
        switch batteryState {
        case .unknown: print("未识别")
        case .charging: print("充电中")
        case .full: print("充满状态")
        case .unplugged: print("非充电状态")
        }
        UIDevice.current.isBatteryMonitoringEnabled = false
        
        let infoDictionary = Bundle.main.infoDictionary!
        //app版本号
        if let appVersion = infoDictionary["CFBundleVersion"]{
            print("appVersion:\(appVersion)")
        }
        
        //app名称
        if let appName = infoDictionary["CFBundleDisplayName"]{
            print("appName:\(appName)")
        }
        
        //主程序版本号
        if let shortVersion = infoDictionary["CFBundleShortVersionString"]{
            print("shortVersion:\(shortVersion)")
        }
    }
    
    func buttonSets()
    {
        var x_start = 50
        var y_start = 0
        var y_increase = 80
        var width = 300
        var height = y_increase
        
        y_start += y_increase
        setupButtonInfo(x: x_start, y: y_start, width: width, height: height, title: "查笔顺", color: UIColor.gray,selector: #selector(ViewController.button_bishun))

        y_start += y_increase
        setupButtonInfo(x: x_start, y: y_start, width: width, height: height, title: "QQ查作业", color: UIColor.gray,selector: #selector(ViewController.buttonTap3))

        y_start += y_increase
        setupButtonInfo(x: x_start, y: y_start, width: width, height: height, title: "古诗", color: UIColor.gray,selector: #selector(ViewController.button_gushi))

        y_start += y_increase
        setupButtonInfo(x: x_start, y: y_start, width: width, height: height, title: "晚安故事", color: UIColor.gray,selector: #selector(ViewController.button_eveningstory))

        y_start += y_increase
        setupButtonInfo(x: x_start, y: y_start, width: width, height: height, title: "搜索", color: UIColor.gray,selector: #selector(ViewController.buttonTap1))

        y_start += y_increase
        setupButtonInfo(x: x_start, y: y_start, width: width, height: height, title: "GITHUB", color: UIColor.gray,selector: #selector(ViewController.buttonTap2))


    
    }
    
    
    func setupButtonInfo(x:Int, y:Int, width:Int, height:Int, title:String, color:UIColor, selector:Selector)
    {
        let button = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
        button.backgroundColor = color
        button.setTitle(title, for: UIControlState.normal)
        button.titleLabel?.font.withSize(14)
        
        button.addTarget(self, action: selector, for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }

    func setupButtonInfo1(x:Int, y:Int, width:Int, height:Int, title:String, color:UIColor)
    {
        let button = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
        button.backgroundColor = color
        button.setTitle(title, for: UIControlState.normal)
        button.addTarget(self, action: #selector(ViewController.buttonTap1), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }
    
    func setupButtonInfo2(x:Int, y:Int, width:Int, height:Int, title:String, color:UIColor)
    {
        let button = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
        button.backgroundColor = color
        button.setTitle(title, for: UIControlState.normal)
        button.addTarget(self, action: #selector(ViewController.buttonTap2), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
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
//        var urlString = "http://hangge.com"
//        var url = NSURL(string: urlString)
//        //setting url
//        guard let settingsUrl = URL(string: "https://cn.bing.com/") else {
//            return
//        }
//
//        if UIApplication.shared.canOpenURL(settingsUrl) {
//            UIApplication.shared.openURL(settingsUrl)
//        }
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
    
    func jumptoUrl(string:String)
    {
        //setting url
        guard let jumpUrl = URL(string: string) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(jumpUrl) {
            UIApplication.shared.openURL(jumpUrl)
        }
    }
    
    //selector 其实是 Objective-C runtime 的概念
    @objc func buttonTap() {
        print("buttonTap")
        let urlString:String = "http://hangge.com"
        jumptoUrl(string: urlString)
    }
    
    @objc func buttonTap1(button:UIButton) {
        print("buttonTap1参数")
        let urlString:String = "https://cn.bing.com/"
        jumptoUrl(string: urlString)
    }
    
    @objc func buttonTap2(button:UIButton) {
        print("buttonTap2参数")
        let urlString:String = "https://github.com/weilaidb/pupils_mac"
        jumptoUrl(string: urlString)
    }
    
    @objc func buttonTap3(button:UIButton) {
        print("buttonTap3参数")

        if(UIApplication.shared.canOpenURL(URL(string: "mqq://")!)){
            let str =  String(format: "mqq://im/chat?chat_type=wpa&uin=396806932&version=1&src_type=web")
            UIApplication.shared.openURL(URL(string: str)!)
        }else{
//            addHint(_msg: "没有发现QQ")
        	
            print("没有发现QQ")
        }
    }
    
    @objc func button_bishun() {
        let urlString:String = "https://www.hanzi5.com/bishun/"
        jumptoUrl(string: urlString)
    }
    @objc func button_gushi() {
        let urlString:String = "https://www.gushiwen.org/"
        jumptoUrl(string: urlString)
    }
    
    @objc func button_eveningstory() {
        if(UIApplication.shared.canOpenURL(URL(string: "mqq://")!)){
            let str =  String(format: "mqq://im/chat?chat_type=wpa&uin=396806932&version=1&src_type=web")
            UIApplication.shared.openURL(URL(string: str)!)
        }else{
            //            addHint(_msg: "没有发现QQ")
            
            print("没有发现QQ")
        }
    }
    
    
}

