//
//  Http.swift
//  BallmerBot
//
//  Created by Jon Hemstreet on 6/11/16.
//  Copyright © 2016 Jon Hemstreet. All rights reserved.
//

import Foundation
import Alamofire

class HttpRequest {
    
    let headers = [
        "x-access-token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXNzd29yZCI6InNoYTEkMDY4YmJmYjckMSRiODJjYjBhMTBlYjQ2NTQ4YTBlYjM0ZThjYTc3ZGMwZDJkNzIzODk3IiwiYWRtaW4iOnRydWUsInVzZXJuYW1lIjoiYWRtaW4iLCJfaWQiOiI1NmY3MWNhNWRkYjI3ZGM0ODgwMDAwMDEiLCJfX3YiOjB9.78u-x9WFol9jik_g-HrVF8ocUhYGlGByzYEC_V5N5Lw"
    ]
    
    func getBottles() -> Any {
        
        Alamofire.request(.GET, "http://162.243.121.163:3000/api/v1/list/Bottle", parameters: ["foo": "bar"], headers: headers)
            .responseJSON { response in
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
//                    return JSON;
                }
        
        }
        return 0
    }
}