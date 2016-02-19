//: Playground - noun: a place where people can play

import XCPlayground
import NeighborKit

setup(rows: 10, columns: 10)
XCPlaygroundPage.currentPage.liveView = worldView

world.addAgents(10, agentInit: Agent())
world.addAgents(2, ofType: Agent.self)
world.addAgents(5, ofType: Agent.self) { agent in
	agent.name = "bob"
	agent.position = (2, 2)
}

