//
//  Runtime.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public private(set) var worldView: WorldView!
public private(set) var scene: WorldScene!
public private(set) var world: World!

public func setup(rows rows: Int, columns: Int) {
	worldView = WorldView(frame: CGRect(origin: CGPoint.zero, size: WorldView.defaultSize))
	scene = WorldScene(size: worldView.frame.size, grid: Grid(rows: rows, columns: columns))
	worldView.presentScene(scene)
}