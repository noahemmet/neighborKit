//
//  WorldView.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation
import SpriteKit

public class WorldView: SKView {
	public let grid: Grid
 
	public init(grid: Grid) {
		self.grid = grid
		super.init(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 480, height: 480)))
		for (row, column) in grid {
			
		}
	}
	
	required public init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")}
}

private class WorldScene: SKScene {
	private override func update(currentTime: NSTimeInterval) {
		super.update(currentTime)
		
	}
}

public class PatchView: SKSpriteNode {
	
}
