//
//  DetailViewController.swift
//  hangge_720
//
//  Created by hangge on 2016/11/21.
//  Copyright © 2016年 hangge. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var itemString:String?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = itemString
    }
    
    @IBAction func backBtnClick(_ sender: AnyObject) {
        //返回到上一个页面
        self.presentingViewController!.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }   
}
