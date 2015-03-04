//
//  ViewController2.swift
//  ParseStarterProject
//
//  Created by 矢吹祐真 on 2015/02/27.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import Parse

class ViewControllerC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
// MARK:ボタンを押すとC棟１階にいるとアップロード       
    @IBAction func upObjectButtonC1(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "C棟１階にいます"
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
    
// MARK:ボタンを押すとC棟２階にいるとアップロード
    @IBAction func upObjectButtonC2(){
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        
        var query = PFQuery(className:"hoge")
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "C棟２階にいます"
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
    
// MARK:ボタンを押すとC棟３階にいるとアップロード
    @IBAction func upObjectButtonC3(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "C棟３階にいます"
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