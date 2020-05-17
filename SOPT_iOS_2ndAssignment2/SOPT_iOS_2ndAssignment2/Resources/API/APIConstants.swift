//
//  APIConstants.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 2020/05/17.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import Foundation

struct APIConstants {
    static let baseURL = "http://13.209.144.115:3333"
    static let signinURL = APIConstants.baseURL + "/user/signin"
    static let signupURL = APIConstants.baseURL + "/user/signup"
}
