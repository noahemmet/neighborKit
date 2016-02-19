//
//  CanvasView.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/19/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public class CanvasView: UIView {
	let worldView: WorldView?
	let settingsView: SettingsView = SettingsView()
	public init(worldView: WorldView?) {
		self.worldView = worldView
		super.init(frame: worldView?.frame ?? CGRect(x: 0, y: 0, width: 480, height: 480))
		if let worldView = worldView {
			addSubview(worldView)
		}
		addSubview(settingsView)
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override public func layoutSubviews() {
		super.layoutSubviews()
		frame.size.height = settingsView.frame.size.height + (worldView?.frame.size.height ?? 0)
		worldView?.frame.origin = CGPoint.zero
		settingsView.frame.origin.y = 480
		settingsView.frame.origin.x = 0
//		settingsView.frame.size.width = frame.size.width
		
	}
}