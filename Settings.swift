//
//  Settings.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/19/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation


public protocol Settable {
	
}

public struct Toggle: Settable {
	public init() {
		
	}
}

protocol SettingsDelegate: class {
	func settingsDidAddSettable(settings: Settings, settable: Settable)
}

public class Settings {
	internal private(set) var settables: [Any] = []
	weak var delegate: SettingsDelegate?
	public func addSetting(settable: Settable) {
		settables.append(settable)
		delegate?.settingsDidAddSettable(self, settable: settable)
	}
}
