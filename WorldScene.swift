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
 
	public init(size: CGSize, grid: Grid) {
		self.grid = grid
		
		super.init(size: size)
		
		let patchSize = CGSize(width: frame.size.width / CGFloat(grid.columns), height: frame.size.height / CGFloat(grid.rows))
		//		var patchViews: [[PatchSprite]] = [[]]
		for point in self.grid {
			if point.row == 0 {
				patchViews.append([])
			}
			let patch = PatchSprite(color: .orangeColor(), size: patchSize)
			patchViews[point.column].append(patch)
			
		}
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func patchForGridPoint(point: GridPoint) -> PatchSprite {
		return patchViews[point.column][point.row]
	}
}