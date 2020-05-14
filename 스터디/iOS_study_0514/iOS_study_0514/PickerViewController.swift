//
//  PickerViewController.swift
//  iOS_study_0514
//
//  Created by SeongEun on 2020/05/14.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 9
    let PICKER_VIEW_COLUMN = 1
    var imgFileName = ["profile1Img", "profile2Img", "profile3Img", "profile4Img", "profile5Img", "profile6Img", "profile7Img", "profile8Img", "profile9Img"]
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //column 개수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imgFileName.count
    }
    
    //사진 개수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
//    //picker의 title에 나타날 것
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imgFileName[row]
//    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        itemLabel.text = imgFileName[row]
        imageView.image = UIImage(named: imgFileName[row])
    }
}
