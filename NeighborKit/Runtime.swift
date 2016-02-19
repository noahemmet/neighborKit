//
//  Runtime.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public let world = World()
public private(set) var scene: WorldScene!
public private(set) var worldView: WorldView!

public private(set) var tick: Int64 = 0
public var maxTicks: Int64? = 1000

public func setup(rows rows: Int, columns: Int, maxTicks maxTicksParam: Int64? = 1000) {
	tick = 0
	maxTicks = maxTicksParam
	let size = WorldView.defaultSize
	
	scene = WorldScene(size: size, grid: Grid(rows: rows, columns: columns))
	world.delegate = scene
	worldView = WorldView(frame: CGRect(origin: CGPoint.zero, size: size))
	worldView.presentScene(scene)
}

public func loop(tickClosure: () -> Void ) {
	while(tick < maxTicks) {
		tickClosure()
		tick += 1
	}
}