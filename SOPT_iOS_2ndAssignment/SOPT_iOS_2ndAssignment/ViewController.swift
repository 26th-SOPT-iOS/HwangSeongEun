//
//  ViewController.swift
//  SOPT_iOS_2ndAssignment
//
//  Created by SeongEun on 28/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    var answer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //버튼 똥그랗게
        for i in 0...15 {
            buttons[i].layer.cornerRadius = 40
        }
        
    }

    @IBAction func btnAC(_ sender: Any) {
        answer = 0
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn0(_ sender: Any) {
        answer = answer * 10 + 0
        answerLabel.text = String(answer)
       }
    
    @IBAction func btn1(_ sender: Any) {
        answer = answer * 10 + 1
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn2(_ sender: Any) {
        answer = answer * 10 + 2
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn3(_ sender: Any) {
        answer = answer * 10 + 3
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn4(_ sender: Any) {
        answer = answer * 10 + 4
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn5(_ sender: Any) {
        answer = answer * 10 + 5
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn6(_ sender: Any) {
        answer = answer * 10 + 6
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn7(_ sender: Any) {
        answer = answer * 10 + 7
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn8(_ sender: Any) {
        answer = answer * 10 + 8
        answerLabel.text = String(answer)
    }
    
    @IBAction func btn9(_ sender: Any) {
        answer = answer * 10 + 9
        answerLabel.text = String(answer)
    }
}

