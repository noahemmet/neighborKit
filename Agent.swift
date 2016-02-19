//
//  Agent.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

private var uuidCounter: UInt64 = 0

protocol AgentType {
	
}

public class Agent {
	private let uuid: UInt64
	public required init() {
		uuid = uuidCounter
		uuidCounter += 1
	}
}

extension Agent: Hashable {
	public var hashValue: Int {
		return Int(uuid)
	}
}

public func ==(lhs: Agent, rhs: Agent) -> Bool {
	return lhs === rhs
}