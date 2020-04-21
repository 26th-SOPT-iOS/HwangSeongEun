//
//  ViewController.swift
//  SOPT_iOS_1stAssignment
//
//  Created by SeongEun on 18/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    var id: String?
    var pw: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func transferData(_ sender: Any) {
        //넘겨줄 페이지 지정
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? LoginViewController else {return}
        
        //데이터 받아서
        receiveViewController.id = idTextField.text
        receiveViewController.pw = pwTextField.text
        //넘겨주기
        self.present(receiveViewController, animated: true, completion: nil)
    }
    
    
}

