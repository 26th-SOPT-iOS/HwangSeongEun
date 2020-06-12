//
//  MemberCell.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 2020/05/14.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

class MemberCell: UITableViewCell {
    static let identifier: String = "MemberCell"

    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setMemberInformation(_ memberInfomation: Member) {
        profileButton.setImage(memberInfomation.profileImg, for: .normal)
        nameLabel.text = memberInfomation.name
        msgLabel.text = memberInfomation.message
    }

    @IBAction func clickProfileImg(_ sender: Any) {
        print("click")
    }
}
