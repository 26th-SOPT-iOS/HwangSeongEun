//
//  AlertViewController.swift
//  iOS_study_0514
//
//  Created by SeongEun on 2020/05/14.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let imgOn = UIImage(named: "bulb2")
    let imgOff = UIImage(named: "bulb1")
    let imgRemove = UIImage(named: "profile1Img")
    
    var isImgOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = imgOn
    }
    
    @IBAction func turnOn(_ sender: Any) {
        if(isImgOn){
            //alert 위에 안내창
            let onAlert = UIAlertController(title: "경고", message: "현재 켜져있는 상태입니다.", preferredStyle: .alert)
            
            //alert 밑에 버튼
            let onAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)
            //handler: 눌렀을 때 뭘 할지
            
            //alert에 action넣어주기
            onAlert.addAction(onAction)
            present(onAlert, animated: true, completion: nil)
            
        } else {
            imageView.image = imgOn
            isImgOn = true
        }
    }
    
    @IBAction func turnOff(_ sender: Any) {
        let offAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {
            ACTION in self.imageView.image = self.imgOff
            self.isImgOn = false
        })
        
        let noAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
        
        offAlert.addAction(yesAction)
        offAlert.addAction(noAction)
        present(offAlert, animated: true, completion: nil)
    }

    @IBAction func deleteBulb(_ sender: Any) {
        let deleteAlert = UIAlertController(title: "램프 제거", message: "램프를 제거할까요?", preferredStyle: .alert)
        
        let onAction = UIAlertAction(title: "램프 켜기", style: UIAlertAction.Style.default, handler: {
            ACTION in self.imageView.image = self.imgOn
            self.isImgOn = true
        })
        
        let offAction = UIAlertAction(title: "램프 끄기", style: UIAlertAction.Style.default, handler: {
            ACTION in self.imageView.image = self.imgOff
            self.isImgOn = false
        })
        
        let deleteAction = UIAlertAction(title: "램프 제거", style: UIAlertAction.Style.default, handler:{
            ACTION in self.imageView.image = self.imgRemove})
        
        deleteAlert.addAction(onAction)
        deleteAlert.addAction(offAction)
        deleteAlert.addAction(deleteAction)
        present(deleteAlert, animated: true, completion: nil)
    }
    
}
