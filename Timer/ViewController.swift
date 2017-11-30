//
//  ViewController.swift
//  Timer
//
//  Created by Charlie Cuddy on 11/5/17.
//  Copyright © 2017 Charlie Cuddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countdown: UILabel!
    
    var timer = Timer()
    var secondsLeft = 0
    @IBOutlet weak var userNum: UITextField!
    
    @IBAction func tenSec(_ sender: Any) {
        secondsLeft = 10
        countdown.text = String(secondsLeft)
    }
    
    @IBAction func fifteenSec(_ sender: Any) {
        secondsLeft = 15
        countdown.text = String(secondsLeft)
    }
    
    @IBAction func twentySec(_ sender: Any) {
        secondsLeft = 20
        countdown.text = String(secondsLeft)
    }
    
    @IBAction func twentyFiveSec(_ sender: Any) {
        secondsLeft = 25
        countdown.text = String(secondsLeft)
    }
    
    @IBAction func thirtySec(_ sender: Any) {
        secondsLeft = 30
        countdown.text = String(secondsLeft)
    }
    
    @IBAction func sixtySec(_ sender: Any) {
        secondsLeft = 60
        countdown.text = String(secondsLeft)
    }
    
    @objc func startTimer() {
        if secondsLeft > 0 {
            secondsLeft -= 1
            countdown.text = String(secondsLeft)
        } else {
            countdown.text = "Time is up!"
            timer.invalidate()
        }
    }
    
    @IBAction func startTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.startTimer as (ViewController) -> () -> ()), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        countdown.text = String(secondsLeft) + "\nPaused"
        timer.invalidate()
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if secondsLeft > 10 {
            secondsLeft -= 10
            countdown.text = String(secondsLeft)
        } else {
            countdown.text = "There are only " + String(secondsLeft) + " seconds left.\nYou can't subtract 10 seconds!"
        }
    }
    @IBAction func addTen(_ sender: Any) {
        secondsLeft += 10
        countdown.text = String(secondsLeft)
    }
    
    @IBAction func reset(_ sender: Any) {
        countdown.text = "Set the Timer"
        timer.invalidate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

