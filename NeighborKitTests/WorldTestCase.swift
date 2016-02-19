//
//  WorldTestCase.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import XCTest
@testable import NeighborKit

class WorldTestCase: XCTestCase {
	
    func testAddAgents() {
		let world = World()
		world.addAgents(10, agentClosure: Agent())
		XCTAssertEqual(world.agents.count, 10)
		
		// subclass
		class SubAgent: Agent { }
		world.addAgents(5, agentClosure: SubAgent())
		XCTAssertEqual(world.agents.count, 15)
		
		// of type
		let filteredSubAgents = world.agentsOfType(SubAgent)
		XCTAssertEqual(filteredSubAgents.count, 5)
    }
}
