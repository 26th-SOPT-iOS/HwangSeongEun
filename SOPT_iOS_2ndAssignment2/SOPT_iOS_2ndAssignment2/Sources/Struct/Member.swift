//
//  Member.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 2020/05/14.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import UIKit

struct Member {
    var profileImg: UIImage?
    var name: String
    var message: String
    
    init(profileImg: String, name: String, message: String){
        self.profileImg = UIImage(named: profileImg)
        self.name = name
        self.message = message
    }
}
