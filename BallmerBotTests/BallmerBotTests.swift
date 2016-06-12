//
//  BallmerBotTests.swift
//  BallmerBotTests
//
//  Created by Jon Hemstreet on 6/11/16.
//  Copyright © 2016 Jon Hemstreet. All rights reserved.
//

import XCTest
@testable import BallmerBot

class BallmerBotTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func shouldGetBottles() {
        
        let http = HttpRequest()
        
        http.getBottlesRequest().responseJSON { response in
            if let JSON = response.result.value {
                XCTAssertNotNil(JSON)
            }
        }
    }
    
}
