
//  SettingsView.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/19/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public class SettingsView: UIView {
	private let tableView = UITableView()
	public init() {
		super.init(frame: CGRect(x: 0, y: 0, width: 480, height: 480))
		settings.delegate = self
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: String(UITableViewCell))
		addSubview(tableView)
	}
	
	public required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
	public override func layoutSubviews() {
		super.layoutSubviews()
		tableView.frame = self.bounds
		
	}
}

extension SettingsView: UITableViewDataSource, UITableViewDelegate {
	public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return settings.settables.count
	}
	public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier(String(UITableViewCell), forIndexPath: indexPath)
		cell.textLabel?.text = String(indexPath.row)
		return cell
	}
}

extension SettingsView: SettingsDelegate {
	func settingsDidAddSettable(settings: Settings, settable: Settable) {
		tableView.reloadData()
	}
}

// MARK: - Settings Cell

public class SwitchCell: UITableViewCell {
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
