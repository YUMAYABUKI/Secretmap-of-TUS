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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func upObjectButtonA1(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "A棟１階にいます"
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
    
    
    @IBAction func upObjectButtonA2(){
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01

        var query = PFQuery(className:"hoge")
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "A棟２階にいます"
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
    
    
    @IBAction func upObjectButtonA3(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "A棟３階にいます"
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
