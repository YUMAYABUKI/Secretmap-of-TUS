//
//  IndexViewController.swift
//  ParseStarterProject
//
//  Created by 矢吹祐真 on 2015/03/04.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerWater: UIViewController,AVAudioPlayerDelegate {
    
    var myAudioPlayer : AVAudioPlayer!
    
    @IBOutlet var message : UILabel
    @IBAction func actionButton(sender : AnyObject) {
        let randInt = arc4random_uniform(10);
        if(randInt <= 5) {
            message.text = "hoge"
        } else {
            message.text = "moge"
        }
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //再生する音源のURLを生成.
        let soundFilePath1 : NSString = NSBundle.mainBundle().pathForResource("rediculous", ofType: "mp3")!
        let fileURL1 : NSURL = NSURL(fileURLWithPath: soundFilePath1)!
        
        let soundFilePath2 : NSString = NSBundle.mainBundle().pathForResource("Lumos", ofType: "mp3")!
        let fileURL2 : NSURL = NSURL(fileURLWithPath: soundFilePath2)!

        /*
        var randInt = arc4random_uniform(2);
        if(randInt == 1) {
            let fileURL = fileURL1
        } else {
            let fileURL = fileURL2
        }*/
        
        let fileURL = fileURL1
        
        //AVAudioPlayerのインスタンス化.
        myAudioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        
        //AVAudioPlayerのデリゲートをセット.
        myAudioPlayer.delegate = self
        
        myAudioPlayer.play()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        println("Music Finish")
    }
    
}