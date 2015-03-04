//
//  ViewController2.swift
//  ParseStarterProject
//
//  Created by 矢吹祐真 on 2015/02/27.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import Parse

class ViewController3: UIViewController {
    
     @IBOutlet var labelbuilding:UILabel!
    
    override func viewDidLoad() {
        
       
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var whichbuilding2 = appDelegate.building
        self.labelbuilding.text = whichbuilding2
        
        super.viewDidLoad()
    }
    
    
    
// MARK:ボタンを押すとA棟１階にいるとアップロード
    @IBAction func upObjectButtonA1(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "１階にいます"
                //hogeクラスの中のmyareaに位置情報を保存
                hoge.saveInBackgroundWithBlock {
                    (success: Bool, error: NSError!) -> Void in
                     if (success) {
                        println("Save to area")
                    } else {
                        // There was a problem, check error.description
                    }
                }
            }
        }
    }
    
// MARK:ボタンを押すとA棟２階にいるとアップロード
    @IBAction func upObjectButtonA2(){
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01

        var query = PFQuery(className:"hoge")
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "２階にいます"
                hoge.saveInBackgroundWithBlock {
                    (success: Bool, error: NSError!) -> Void in
                    if (success) {
                        println("Save to area")
                    } else {
                        // There was a problem, check error.description
                    }
                }
            }
        }
    }
    
// MARK:ボタンを押すとA棟３階にいるとアップロード
    @IBAction func upObjectButtonA3(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "３階にいます"
                hoge.saveInBackgroundWithBlock {
                    (success: Bool, error: NSError!) -> Void in
                    if (success) {
                        println("Save to area")
                    } else {
                        // There was a problem, check error.description
                    }
                }
            }
        }
    }
    
    

}
