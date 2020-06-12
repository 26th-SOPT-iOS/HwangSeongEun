//
//  adService.swift
//  SOPT-CoupangEats
//
//  Created by SeongEun on 2020/06/11.
//  Copyright © 2020 남수김. All rights reserved.
//

import Foundation
import Alamofire

struct AdService{
    static let shared = AdService()
    
    func openAd(completion: @escaping (NetworkResult<Any>) -> Void) {
        
        let header: HTTPHeaders = ["Content-Type": "application/json"]

        let dataRequest = Alamofire.request(APIConstants.adURL, method: .get, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData { dataResponse in
        switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else {return}
                guard let value = dataResponse.result.value else {return}
                let networkResult = self.judge(by: statusCode, value)
                completion(networkResult)
            case .failure: completion(.networkFail)
            }
        }
    }
    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200: return getAd(by: data)
        case 400: return .pathErr
        case 500: return .serverErr
        case 404: return .networkErr
        default: return .networkFail
        }
    }
    
    private func getAd(by data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodeData = try? decoder.decode(AdData.self, from: data) else { return .pathErr}
        guard let tokenData = decodeData.status?.data else{return .requestErr}
        
        return .success(tokenData.result!)
    }
}
