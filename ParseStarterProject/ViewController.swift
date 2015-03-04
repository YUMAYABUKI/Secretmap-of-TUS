//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
  
    @IBOutlet var UserName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func UserNameButton(){
        var hoge = PFObject(className:"hoge") //クラスをhogeに指定
        hoge["username"] = UserName.text
        //UserName.textをhogeクラスの中のusernameに入れる
        hoge.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
            if (success) {
                println("Save to username")
                var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate //AppDelegateのインスタンスを取得
                appDelegate.objectId01 = hoge.objectId//appDelegateの変数を操作
                
                

            } else {
                // There was a problem, check error.description
            }
        }
        
        
        
                   }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

