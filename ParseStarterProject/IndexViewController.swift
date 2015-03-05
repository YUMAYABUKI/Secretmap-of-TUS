import UIKit
import AVFoundation

class IndexViewController: UIViewController ,AVAudioPlayerDelegate{
    
    var myAudioPlayer : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func curses(){
        
    
    let randInt = arc4random_uniform(3);
    
    //再生する音源のURLを生成.
    let soundFilePath0 : NSString = NSBundle.mainBundle().pathForResource("expecto", ofType: "mp3")!
    let fileURL0 : NSURL = NSURL(fileURLWithPath: soundFilePath0)!
    
    let soundFilePath1 : NSString = NSBundle.mainBundle().pathForResource("Lumos", ofType: "mp3")!
    let fileURL1 : NSURL = NSURL(fileURLWithPath: soundFilePath1)!
    
    let soundFilePath2 : NSString = NSBundle.mainBundle().pathForResource("Rediculouss", ofType: "mp3")!
    let fileURL2 : NSURL = NSURL(fileURLWithPath: soundFilePath2)!
    
    
    var fileURL :NSURL!
    
    
    if(randInt == 1) {
    fileURL = fileURL1
    } else if(randInt == 2){
    fileURL = fileURL2
    } else{
    fileURL = fileURL0
        }
    
    //AVAudioPlayerのインスタンス化.
    myAudioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
    
    //AVAudioPlayerのデリゲートをセット.
    myAudioPlayer.delegate = self
    
    myAudioPlayer.play()
        }
}