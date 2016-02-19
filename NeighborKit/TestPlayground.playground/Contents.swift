//: Playground - noun: a place where people can play

import UIKit
import SpriteKit
import XCPlayground
import NeighborKit

setup(rows: 10, columns: 10)
world.addAgents(10, agentClosure: Agent())
XCPlaygroundPage.currentPage.liveView = worldView
