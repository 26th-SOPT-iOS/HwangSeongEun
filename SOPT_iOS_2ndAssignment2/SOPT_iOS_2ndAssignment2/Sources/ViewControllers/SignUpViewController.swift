//
//  SignUpViewController.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 30/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var pwText: UITextField!
    @IBOutlet weak var okBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //둥글게 둥글게
        nameText.layer.cornerRadius = 22
        emailText.layer.cornerRadius = 22
        pwText.layer.cornerRadius = 22
        idText.layer.cornerRadius = 22
        phoneText.layer.cornerRadius = 22
        okBtn.layer.cornerRadius = 24
        
        //back 화살표 하얗게
        self.navigationController?.navigationBar.tintColor = UIColor(red: 7/255, green: 59/255, blue: 163/255, alpha: 1.0)
        self.navigationController?.navigationBar.topItem?.title = ""
        
    }


    @IBAction func transferView(_ sender: Any) {
//        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? ViewController else {return}
//
//        self.present(receiveViewController, animated: true, completion:{ self.navigationController?.popViewController(animated: false)
//        })
        
        //self.navigationController?.popViewController(animated: false)
        
        guard let inputID = idText.text else {return}
        guard let inputPWD = pwText.text else {return}
        guard let inputNAME = nameText.text else {return}
        guard let inputEMAIL = emailText.text else {return}
        guard let inputPH = phoneText.text else {return}
        
            
        SignUpService.shared.signUp(id: inputID, pwd: inputPWD, name: inputNAME, email: inputEMAIL, phone: inputPH){
            networkResult in
            switch networkResult {
            case .success:
                guard let loginViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? ViewController else { return }
                loginViewController.modalPresentationStyle = .fullScreen
                
                loginViewController.id = inputID
                loginViewController.pwd = inputPWD
                
                self.present(loginViewController, animated: true, completion: {self.navigationController?.popViewController(animated: false)})
                
                
            
                
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "회원가입 실패", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
                
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail")
            }
        }
    
    }
}
