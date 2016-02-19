//
//  WorldSceneTestCase.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import XCTest
import NeighborKit

class WorldSceneTestCase: XCTestCase {

	func testInit() {
		let worldView = WorldView(frame: CGRect(origin: CGPoint.zero, size: WorldView.defaultSize))
		let scene = WorldScene(size: worldView.frame.size, grid: Grid(rows: 10, columns: 10))
		worldView.presentScene(scene)
	}
}
