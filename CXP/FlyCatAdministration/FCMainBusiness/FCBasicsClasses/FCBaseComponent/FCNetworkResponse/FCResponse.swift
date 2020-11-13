//
//  FCResponse.swift
//  FlyCatAdministration
//
//  Created by MacX on 2020/6/27.
//  Copyright © 2020 Yochi. All rights reserved.
//

import UIKit
import HandyJSON

class FCResponse: NSObject, HandyJSON, Codable {
//    var data: [String : Any]?
    var err: String?
    
    required public override init() {
        
    }
    
    static public func stringToObject(jsonData: [String : Any]?) -> FCountryCodeModel {
        return FCountryCodeModel.deserialize(from: jsonData) ?? FCountryCodeModel()
    }
    
    
}
