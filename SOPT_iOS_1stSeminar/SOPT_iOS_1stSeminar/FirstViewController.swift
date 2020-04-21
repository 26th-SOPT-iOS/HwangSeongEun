//
//  FirstViewController.swift
//  SOPT_iOS_1stSeminar
//
//  Created by SeongEun on 18/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sampleSwitch: UISwitch!
    @IBOutlet weak var sampleSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func transferData(_ sender: Any) {
        //넘겨줄 페이지 지정
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "secondViewController") as? SecondViewController else {return}
        
        //데이터 받아서
        receiveViewController.name = nameTextField.text
        receiveViewController.email = emailTextField.text
        receiveViewController.isOnOff = sampleSwitch.isOn
        receiveViewController.frequency = sampleSlider.value
        //넘겨주기
        self.present(receiveViewController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
