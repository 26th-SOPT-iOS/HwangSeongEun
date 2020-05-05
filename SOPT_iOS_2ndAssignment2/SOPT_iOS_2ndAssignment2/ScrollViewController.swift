//
//  ScrollViewController.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 01/05/2020.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //네비게이션바 투명망토
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.isTranslucent = true
//        self.navigationController?.view.backgroundColor = .clear
        
        //back 화살표 하얗게
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }

    @IBAction func backView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
