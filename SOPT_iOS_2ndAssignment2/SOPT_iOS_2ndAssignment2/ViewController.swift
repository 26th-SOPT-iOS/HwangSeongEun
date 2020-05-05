//
//  ViewController.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 30/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var pwText: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //둥글게 둥글게
        emailText.layer.cornerRadius = 22
        pwText.layer.cornerRadius = 22
        loginBtn.layer.cornerRadius = 24
    
    self.navigationController?.navigationBar.topItem?.title = ""
        
       
        
    }
    
    @IBAction func transferView(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "scrollViewController") as? ScrollViewController else {return}
        
        self.present(receiveViewController, animated: true, completion: nil)
    }
    
}
