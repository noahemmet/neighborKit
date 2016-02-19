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
	public static let defaultSize = CGSize(width: 480, height: 480)
	
	public override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	required public init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")}
	
}

public class PatchSprite: SKSpriteNode {
	
}
