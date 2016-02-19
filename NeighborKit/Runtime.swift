//
//  Runtime.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public private(set) var world: World!
public private(set) var worldView: WorldView!
public private(set) var scene: WorldScene!


public func setup(rows rows: Int, columns: Int) {
	world = World()
	let size = WorldView.defaultSize
	scene = WorldScene(size: size, grid: Grid(rows: rows, columns: columns))
	worldView = WorldView(frame: CGRect(origin: CGPoint.zero, size: size))
	worldView.presentScene(scene)
}