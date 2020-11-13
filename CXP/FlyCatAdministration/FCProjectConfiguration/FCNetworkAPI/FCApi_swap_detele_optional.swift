//
//  FCApi_swap_detele_optional.swift
//  FlyCatAdministration
//
//  Created by Yochi on 2020/9/19.
//  Copyright © 2020 Yochi. All rights reserved.
//

import UIKit
import UtilsXP

class FCApi_swap_detele_optional: YTKRequest {

    /// 合约最新成交
    var symbol = ""

    var userId =  FCUserInfoManager.sharedInstance.userInfo?.userId ?? ""
    init(symbol: String) {
        
        super.init()
    
        self.symbol = symbol
    }
    
    override func baseUrl() -> String {
        return FCNetAddress.netAddresscl().hosturl_SWAP
    }
    
    override func requestUrl() -> String {
        return "/api/v1/quote/optional/delete/post"
    }
    
    override func requestMethod() -> YTKRequestMethod {
        return .POST
    }
    
    override func requestArgument() -> Any? {
                
        return ["symbol" : symbol, "userId" : userId]
    }
    
    override func requestHeaderFieldValueDictionary() -> [String : String]? {
        return requestHeaderFieldValue()
    }
    
    override func requestSerializerType() -> YTKRequestSerializerType {
        return .JSON
    }
}
