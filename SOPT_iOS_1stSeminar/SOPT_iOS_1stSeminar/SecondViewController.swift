//
//  SecondViewController.swift
//  SOPT_iOS_1stSeminar
//
//  Created by SeongEun on 18/04/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var frequencyLabel: UILabel!
    
    var name: String?
    var email: String?
    var isOnOff: Bool?
    var frequency: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setLabels()
    }
    
    @IBAction func backScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setLabels() {
        
        //Optional Biding
        guard let name = self.name else {return}
        guard let email = self.email else {return}
        guard let isOnOff = self.isOnOff else {return}
        guard let frequency = self.frequency else {return}
        
        //Label에 값 대입
        nameLabel.text = name
        emailLabel.text = email
        switchLabel.text = isOnOff ? "On" : "Off"
        frequencyLabel.text = "\(frequency)"
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
