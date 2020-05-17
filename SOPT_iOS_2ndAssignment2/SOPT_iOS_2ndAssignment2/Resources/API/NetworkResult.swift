//
//  NetworkResult.swift
//  SOPT_iOS_2ndAssignment2
//
//  Created by SeongEun on 2020/05/17.
//  Copyright © 2020 SeongEun. All rights reserved.
//

import Foundation

//  서버 통신 결과 ==> 성공, 요청에러, 경로에러, 서버내부에러, 네트워크 연결 실패
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
