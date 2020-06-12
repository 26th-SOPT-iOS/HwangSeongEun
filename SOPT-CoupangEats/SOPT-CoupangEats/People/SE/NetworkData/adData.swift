//
//  adData.swift
//  SOPT-CoupangEats
//
//  Created by SeongEun on 2020/06/11.
//  Copyright © 2020 남수김. All rights reserved.
//

import Foundation

struct AdData: Codable{
    var status: SecondData?
    var success: Bool
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case success = "success"
    }
    
    init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(SecondData.self, forKey: .status)) ?? nil
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
    }
}

struct SecondData: Codable {
    var status: Int
    var success: Bool
    var message: String
    var data: ResultData?
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case success = "success"
        case message = "message"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? -1
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        data = (try? values.decode(ResultData.self, forKey: .data)) ?? nil
    }
    
}

struct ResultData: Codable {
    var result: [RealData]?
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        result = (try? values.decode([RealData].self, forKey: .result)) ?? nil
    }
}

struct RealData: Codable {
    var idx: Int
    var image: String
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case idx = "idx"
        case image = "image"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idx = (try? values.decode(Int.self, forKey: .idx)) ?? -1
        image = (try? values.decode(String.self, forKey: .image)) ?? ""
        name = (try? values.decode(String.self, forKey: .name)) ?? ""
    }

}
