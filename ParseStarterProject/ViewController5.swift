//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController5: UIViewController {
    
    @IBOutlet var FriendName: UITextField!
    @IBOutlet var label : UILabel!
    @IBOutlet var label2 : UILabel!

    
    

    override func viewDidLoad() {
                super.viewDidLoad()
        }
    
    
    
// MARK:ボタンを押すと友達の位置情報をLabelに表示
    @IBAction func dlObjectButton(){
        var query = PFQuery(className:"hoge")
        query.whereKey("username", equalTo:FriendName.text)
        //hogeクラスの中のusernameがFriendName.textと同じObjectを取り出す
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            if error == nil {
                // The find succeeded.
                NSLog("Successfully retrieved \(objects.count) info.")
                // Do something with the found objects
                for object in objects {
                    NSLog("%@", object.objectId)

                    self.label.text = object["myarea"] as String!
                    self.label2.text = object["building"] as String!
                }
            } else {
                // Log details of the failure
                NSLog("Error: %@ %@", error, error.userInfo!)
            }
        }
    }
}

