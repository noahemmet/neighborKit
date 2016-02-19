//
//  Runtime.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public let worldView = WorldView(frame: CGRect(origin: CGPoint.zero, size: WorldView.defaultSize))
public let scene = WorldScene(size: worldView.frame.size, grid: Grid(rows: 10, columns: 10))
public func start() {
	worldView.presentScene(scene)
}