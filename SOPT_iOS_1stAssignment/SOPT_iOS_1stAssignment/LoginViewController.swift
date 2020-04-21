//
//  LoginViewController.swift
//  SOPT_iOS_1stAssignment
//
//  Created by SeongEun on 21/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var pwLabel: UILabel!
    
    var id: String?
    var pw: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    @IBAction func logout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setLabels(){
        //Optional Biding
        guard let id = self.id else {return}
        guard let pw = self.pw else {return}
        
        //Label에 값 대입
        idLabel.text = id
        pwLabel.text = pw
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
