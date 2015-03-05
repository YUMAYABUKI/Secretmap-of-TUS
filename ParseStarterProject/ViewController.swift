//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

//UI(ユーザーインターフェイス)一式をimportする
import UIKit
//Parseで使うPFObjectなど一式をimportする
import Parse

class ViewController: UIViewController {
    
  
    
    //Main.storyboardで使うUITextFieldの宣言
    @IBOutlet var UserName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK:ボタンを押すとusernameがアップロード
    @IBAction func UserNameButton(){
        //クラスをhogeに指定
        var hoge = PFObject(className:"hoge")
        //UserName.textをhogeクラスの中のusernameに入れる
        hoge["username"] = UserName.text
        hoge.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
            if (success) {
                //成功したら表示
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

