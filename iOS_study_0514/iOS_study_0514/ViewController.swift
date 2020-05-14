//
//  ViewController.swift
//  iOS_study_0514
//
//  Created by SeongEun on 2020/05/14.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentLabel: UILabel!
    @IBOutlet weak var chosenLabel: UILabel!
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func pickDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        chosenLabel.text = "선택시간 : " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        let date = NSDate() //현재시간
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currentLabel.text = "현재시간 : " + formatter.string(from: date as Date)
    }
    
    
}

