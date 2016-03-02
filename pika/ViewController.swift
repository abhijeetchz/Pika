//
//  ViewController.swift
//  pika
//
//  Created by Abhijeet Chaudhary on 16/01/16.
//  Copyright © 2016 Abhijeet Chaudhary. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imgPika: UIImageView!
    
    var pikaSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSBundle.mainBundle().pathForResource("Pikachu", ofType: "m4a")
        let soundURL = NSURL(fileURLWithPath: path!)
        
        do{
            try pikaSound = AVAudioPlayer(contentsOfURL: soundURL)
            pikaSound.prepareToPlay()
        }
        catch let err as NSError{
            print(err.debugDescription)
        }
        
        
        
        imgPika.hidden = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPikaACTION(sender: UIButton) {
        pikaSound.play()
        imgPika.hidden = false
        
    }

    @IBAction func btnHideACTION(sender: UIButton) {
        imgPika.hidden = true
    }
}

