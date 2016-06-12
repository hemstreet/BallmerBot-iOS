//
//  Http.swift
//  BallmerBot
//
//  Created by Jon Hemstreet on 6/11/16.
//  Copyright © 2016 Jon Hemstreet. All rights reserved.
//

//  Usage:
//    Sample way to use this Request Lib
//
//
//    http.getBottlesRequest().responseJSON { response in
//
//        if let JSON = response.result.value {
//        print("JSON: \(JSON)")
//        }
//    }

import Foundation
import Alamofire

class HttpRequest {
    
    let headers = [
        "x-access-token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXNzd29yZCI6InNoYTEkMDY4YmJmYjckMSRiODJjYjBhMTBlYjQ2NTQ4YTBlYjM0ZThjYTc3ZGMwZDJkNzIzODk3IiwiYWRtaW4iOnRydWUsInVzZXJuYW1lIjoiYWRtaW4iLCJfaWQiOiI1NmY3MWNhNWRkYjI3ZGM0ODgwMDAwMDEiLCJfX3YiOjB9.78u-x9WFol9jik_g-HrVF8ocUhYGlGByzYEC_V5N5Lw"
    ]
    
    let host = "http://162.243.121.163:3000/api/v1"

    //   Implement /authorization
    func authorize(username: String, password: String) {
        
        // Need to implement .POST for Alamofire
        
        // send auth off
            // if valid set the access token variable to self.headers["x-access-token"]
        
    }
    
    //   Implement  /signup
    func signup(username: String, password: String) {
        
        // Need to implement .POST for Alamofire
        
        // hit signup endpoint
            // depending on returned data set self.header["x-access-token"] or hit auth endpoint
    }
    
    //    Implement /list/Drink
    func getDrinkRequest() -> Request {
        return getRequest("/list/Drink", params: ["": ""]);
    }
    
//    /pour/{{drinkName}} # pourDrink
//    /pour/{{pump}} #pourFromPump
    
    func getBottlesRequest() -> Request {
        return getRequest("/list/Bottle", params: ["": ""]);
    }
    
    func getRequest(path: String, params: [String: AnyObject] ) -> Request {
        return Alamofire.request(.GET, host + path, parameters: params, headers: headers)
    }
}