//: Playground - noun: a place where people can play

import XCPlayground
import NeighborKit

setup(rows: 10, columns: 10)
XCPlaygroundPage.currentPage.liveView = worldView

class Turtle: Agent {
	
}


world.addAgents(10, agentInit: Agent())
world.addAgents(2, ofType: Agent.self)
world.addAgents(5, ofType: Turtle.self) { agent in
	agent.name = "turtle"
	agent.position = (2, 2)
}

loop() { 
	
}

let toggle = UISwitch()