//
//  ViewController.swift
//  stopwatch
//
//  Created by tatsuomi kikawa on 2020/09/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var count: Float = 0.0
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //start button
    @IBAction func start() {
        //timer.isValid..タイマーの動作してるかどうか　前に！で否定
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
        }
    }
    //stop button
    @IBAction func stop() {
        if timer.isValid {
            timer.invalidate()
        }
    }
    //up メソッド，タイマーを進める
    @objc func up() {
        count = count + 0.01
        label.text = String(format: "%.2f", count)
    }
}

