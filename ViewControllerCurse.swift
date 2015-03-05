//
//  ViewController.swift
//  music
//
//  Created by 矢吹祐真 on 2015/02/28.
//  Copyright (c) 2015年 矢吹祐真. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerCurse: UIViewController ,AVAudioPlayerDelegate{
    
    
    
    
    var myAudioPlayer : AVAudioPlayer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let randInt = arc4random_uniform(2);
        
        //再生する音源のURLを生成.
        let soundFilePath0 : NSString = NSBundle.mainBundle().pathForResource("water", ofType: "mp3")!
        let fileURL0 : NSURL = NSURL(fileURLWithPath: soundFilePath0)!
        
        let soundFilePath1 : NSString = NSBundle.mainBundle().pathForResource("Lumos", ofType: "mp3")!
        let fileURL1 : NSURL = NSURL(fileURLWithPath: soundFilePath1)!
        
        let soundFilePath2 : NSString = NSBundle.mainBundle().pathForResource("rediculous", ofType: "mp3")!
        let fileURL2 : NSURL = NSURL(fileURLWithPath: soundFilePath2)!
        
//        var fileURL : NSURL = NSURL()
        
        var fileURL :NSURL!
        
        if(randInt < 1) {
            fileURL = fileURL1
        } else {
            fileURL = fileURL2
        }
        
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