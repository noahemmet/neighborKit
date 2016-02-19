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

let turtle = world.agentsOfType(Turtle).first!

loop() {
	XCPlaygroundPage.currentPage.captureValue(turtle.position, withIdentifier: "position")
	turtle.position.x += 1
}

let toggle = UISwitch()



XCPlaygroundPage.currentPage.finishExecution()