//
//  GridTestCase.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import XCTest
import NeighborKit

class GridTestCase: XCTestCase {
	

    func testExample() {
		let grid = Grid(rows: 10, columns: 10)
		var count: Int = 0
		for point in grid {
			count += 1
			print(count)
			print(point)
		}
		XCTAssertEqual(count, grid.rows * grid.columns)
    }

}
