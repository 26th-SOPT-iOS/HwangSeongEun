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
    
//    @IBAction func transferView(_ sender: Any) {
//        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "scrollViewController") as? ScrollViewController else {return}
//
//        self.present(receiveViewController, animated: true, completion: nil)
//    }
    
    
    @IBAction func doLogin(_ sender: Any) {
        guard let inputID = emailText.text else {return}
        guard let inputPWD = pwText.text else {return}
        
        LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
                guard let scrollController = self.storyboard?.instantiateViewController(identifier: "scrollViewController") else { return }
                scrollController.modalPresentationStyle = .fullScreen
                self.present(scrollController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "로그인 실패", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFial")
            }
        }
    }
    
}
