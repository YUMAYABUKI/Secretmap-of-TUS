//
//  ViewController4.swift
//  ParseStarterProject
//
//  Created by 矢吹祐真 on 2015/02/27.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import Parse

class ViewController2: UIViewController {
    
    @IBAction func upObjectButtonLibrary(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            //ObjectIdがObject01のObjectを取り出す
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "図書館にいます"
                //hogeというクラスの中のmyareaに位置情報を保存
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

    @IBAction func upObjectButtonBus(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "バス停にいます"
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
    
    @IBAction func upObjectButtonSpecial(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "特別棟にいます"
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
    
    @IBAction func upObjectButtonCafeteria(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "学食にいます"
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
    
    @IBAction func upObjectButtonAbsent(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "今日は休みです"
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
    
    @IBAction func upObjectButtonGym(){
        var query = PFQuery(className:"hoge")
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
        var object01 = appDelegate.objectId01
        query.getObjectInBackgroundWithId(object01) {
            (hoge: PFObject!, error: NSError!) -> Void in
            if error != nil {
                NSLog("%@", error)
            } else {
                hoge["myarea"] = "体育館にいます"
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
