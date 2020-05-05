//
//  SignUpViewController.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 30/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var pwText: UITextField!
    @IBOutlet weak var okBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //둥글게 둥글게
        nameText.layer.cornerRadius = 22
        emailText.layer.cornerRadius = 22
        pwText.layer.cornerRadius = 22
        okBtn.layer.cornerRadius = 24
        
        //back 화살표 하얗게
        self.navigationController?.navigationBar.tintColor = UIColor(red: 7/255, green: 59/255, blue: 163/255, alpha: 1.0)
        self.navigationController?.navigationBar.topItem?.title = ""
        
    }


    @IBAction func transferView(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "scrollViewController") as? ScrollViewController else {return}
        
        self.present(receiveViewController, animated: true, completion:{ self.navigationController?.popViewController(animated: false)
        })
    
    }
}
