//
//  Runtime.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public private(set) var world: World!
public private(set) var scene: WorldScene!
public private(set) var worldView: WorldView!


public func setup(rows rows: Int, columns: Int) {
	let size = WorldView.defaultSize
	
	world = World()
	scene = WorldScene(size: size, grid: Grid(rows: rows, columns: columns))
	world.delegate = scene
	worldView = WorldView(frame: CGRect(origin: CGPoint.zero, size: size))
	worldView.presentScene(scene)
}