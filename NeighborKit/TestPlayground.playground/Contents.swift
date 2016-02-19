//: Playground - noun: a place where people can play

import XCPlayground
import NeighborKit


setup(rows: 10, columns: 10, maxTicks: 10000)
let canvasView = CanvasView(worldView: worldView)
XCPlaygroundPage.currentPage.liveView = canvasView

class Turtle: Agent {
	
}


world.addAgents(10, agentInit: Agent())
world.addAgents(2, ofType: Agent.self)
world.addAgents(5, ofType: Turtle.self) { agent in
	agent.name = "turtle"
	agent.position = CGPoint(x: 2, y: 2)
}

let turtle = world.agentsOfType(Turtle).first!

loop() {
	XCPlaygroundPage.currentPage.captureValue(turtle.position.x * turtle.position.y, withIdentifier: "position")
	turtle.position.x += 1
	turtle.position.y += 1
}

settings.addSetting(Toggle())

//XCPlaygroundPage.currentPage.finishExecution()
