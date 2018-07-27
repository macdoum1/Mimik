//
//  OptionalTests.swift
//  Mimik_Tests
//
//  Created by Mike MacDougall on 7/27/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import Mimik

class OptionalTests: XCTestCase {
    
    func testLetIfNotNil() {
        let test: Int? = 1
        
        let result = test.let_mimik {
            return $0 + 1
        }
        
        XCTAssertEqual(result, 2)
    }
    
    func testLetIfNil() {
        let test: Int? = nil
        
        let result = test.let_mimik {
            return $0 + 1
        }
        
        XCTAssertNil(result)
    }
}
