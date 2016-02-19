//
//  World.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

protocol WorldDelegate: class {
	func world(world: World, didAddAgent agent: Agent)
}

public class World {
	weak var delegate: WorldDelegate?
	
	var agents: Set<Agent> = []
	
	public init() {
		
	}
	
	public func addAgent(agent: Agent) {
		agents.insert(agent)
		delegate?.world(self, didAddAgent: agent)
	}
	
	public func addAgents(number: Int, @autoclosure agentInit: () -> Agent) {
		for _ in 0 ..< number {
			let agent = agentInit()
			addAgent(agent)
			delegate?.world(self, didAddAgent: agent)
		}
	}
	
	public func addAgents(number: Int, ofType: Agent.Type, configure: (Agent -> Void)? = nil) {
		class SubAgent: Agent { }
		let agents = (0..<number).map { _ in ofType.init() }
		for agent in agents {
			configure?(agent)
			addAgent(agent)
		}
	}
	
	public func agentsOfType(agentType: Agent.Type) -> Set<Agent> {
		if agentType == Agent.self {
			return agents
		}
		let filtered = agents.filter { agent in 
			let same = (agentType == agent.dynamicType)
			return same
		}
		return Set(filtered)
	}
}