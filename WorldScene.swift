//
//  WorldScene.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation
import SpriteKit

public class WorldScene: SKScene {
	public let grid: Grid
	public var patchViews: [[PatchSprite]] = [[]]
	public var patchSize: CGSize = CGSize.zero
	public var agentSize: CGSize = CGSize.zero
 
	public init(size: CGSize, grid: Grid) {
		self.grid = grid
		super.init(size: size)
		
		patchSize = CGSize(width: frame.size.width / CGFloat(grid.columns), height: frame.size.height / CGFloat(grid.rows))
		agentSize = CGSize(width: patchSize.width / 2, height: patchSize.height / 2)
		var red:  CGFloat = 0.2
		var blue: CGFloat = 0.8
		let colorIncrement: CGFloat = 0.6 / CGFloat(grid.rows * grid.columns)
		for point in self.grid {
			if point.row == 0 {
				patchViews.append([])
			}
			let color = UIColor(red: red, green: 0.2, blue: blue, alpha: 1)
			let patch = PatchSprite(color: color, size: patchSize)
			patchViews[point.column].append(patch)
			patch.position = positionForGridPoint(point)
			addChild(patch)
			red += colorIncrement
			blue -= colorIncrement
		}
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func patchForGridPoint(point: GridPoint) -> PatchSprite {
		return patchViews[point.column][point.row]
	}
	
	func positionForGridPoint(point: GridPoint) -> CGPoint {
		let x = CGFloat(point.column) * patchSize.width + (patchSize.width / 2)
		let y = CGFloat(point.row) * patchSize.height + (patchSize.height / 2)
		return CGPoint(x: x, y: y)
	}
	
}

extension WorldScene: WorldDelegate {
	func world(world: World, didAddAgent agent: Agent) {
		let agentSprite = AgentSprite(color: .orangeColor(), size: agentSize)
		agentSprite.position = agent.position
		addChild(agentSprite)
	}
}