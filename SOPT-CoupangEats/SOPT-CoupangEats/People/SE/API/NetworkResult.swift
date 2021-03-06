//
//  NetworkResult.swift
//  SOPT-CoupangEats
//
//  Created by SeongEun on 2020/06/11.
//  Copyright © 2020 남수김. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr
    case pathErr
    case serverErr
    case networkErr
    case networkFail
}
