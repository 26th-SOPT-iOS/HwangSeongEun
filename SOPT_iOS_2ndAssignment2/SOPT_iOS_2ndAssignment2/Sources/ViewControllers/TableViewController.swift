//
//  TableViewController.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 2020/05/14.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var memTableView: UITableView!
    @IBOutlet weak var profileBtn: UIButton!
    
    private var memberList:[Member] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cell 구분선 없애기
        self.memTableView.separatorColor = UIColor.clear
       
        
        setMemberInformations()
        memTableView.dataSource = self
        memTableView.delegate = self
    }
    
    private func setMemberInformations(){
        let mem1 = Member(profileImg: "profile1Img", name: "박솝트", message: "응앙")
        let mem2 = Member(profileImg: "profile2Img", name: "이솝트", message: "배고프다")
        let mem3 = Member(profileImg: "profile3Img", name: "강솝트", message: "몽몽망망")
        let mem4 = Member(profileImg: "profile4Img", name: "오솝트", message: "오오")
        let mem5 = Member(profileImg: "profile5Img", name: "한솝트", message: "집에 가고 싶다")
        let mem6 = Member(profileImg: "profile6Img", name: "황솝트", message: "교수님 왜그러세요 진짜")
        let mem7 = Member(profileImg: "profile7Img", name: "김솝트", message: "멍멍")
        let mem8 = Member(profileImg: "profile8Img", name: "방솝트", message: "잉")
        let mem9 = Member(profileImg: "profile9Img", name: "끝솝트", message: "끝!")
        
        memberList = [mem1, mem2, mem3, mem4, mem5, mem6, mem7, mem8, mem9]
    }
    
    //옵션 acitonsheet 만들기~
    @IBAction func showOption(_ sender: Any) {
        let optionAlert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let friendAction = UIAlertAction(title: "친구관리", style: .default, handler: nil)
        
        let wholeAction = UIAlertAction(title: "전체설정", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        optionAlert.addAction(friendAction)
        optionAlert.addAction(wholeAction)
        optionAlert.addAction(cancelAction)
        present(optionAlert, animated: true, completion: nil)
    }
    
    @IBAction func clickProfileBtn(_ sender: Any) {
        print("앙")
    }
    
}

extension TableViewController: UITableViewDataSource {
    //cell 개수 정한다
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberList.count
    }
    
    //cell에 데이터 넣어주기
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let memberCell = tableView.dequeueReusableCell(withIdentifier: MemberCell.identifier, for: indexPath) as? MemberCell else {
            return UITableViewCell() }
        memberCell.setMemberInformation(memberList[indexPath.row])
        return memberCell
    }
}

extension TableViewController: UITableViewDelegate {
    
    //table cell 높이 정하기
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    //스와이프 삭제 버튼
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {

            memberList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    //delete 버튼 이름 바꿔주기
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }
    
}
