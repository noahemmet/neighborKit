//
//  WorldViewTestCase.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import XCTest
import NeighborKit

class WorldViewTestCase: XCTestCase {

    func testInit() {
		let _ = WorldView(frame: CGRect(origin: CGPoint.zero, size: WorldView.defaultSize))
    }

}
