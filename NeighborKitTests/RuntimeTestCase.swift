//
//  RuntimeTestCase.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/19/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import XCTest
import NeighborKit

class RuntimeTestCase: XCTestCase {

    override func setUp() {
        super.setUp()
		setup(rows: 10, columns: 10)
		maxTicks = 100
    }
    
    override func tearDown() {
		maxTicks = nil
		super.tearDown()
    }

    func testMaxTicks() {
		loop() { 
			
		}
		XCTAssertEqual(maxTicks, tick)
	}
}
