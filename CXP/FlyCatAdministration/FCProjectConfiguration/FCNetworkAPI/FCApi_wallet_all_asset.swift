//
//  FCApi_wallet_all_asset.swift
//  FlyCatAdministration
//
//  Created by Yochi on 2020/9/23.
//  Copyright © 2020 Yochi. All rights reserved.
//

import UIKit
import UtilsXP

class FCApi_wallet_all_asset: YTKRequest {

    override init() {
        super.init()
    }
    
    override func baseUrl() -> String {
        return FCNetAddress.netAddresscl().hosturl_API
    }
    
    override func requestUrl() -> String {
        return "/api/v1/wallet/all/asset/config"
    }
    
    override func requestMethod() -> YTKRequestMethod {
        return .GET
    }
    

    override func requestHeaderFieldValueDictionary() -> [String : String]? {
        
        return requestHeaderFieldValue()
    }
    
    override func requestSerializerType() -> YTKRequestSerializerType {
        return .JSON
    }
}
