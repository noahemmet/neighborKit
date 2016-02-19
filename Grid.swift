//
//  Grid.swift
//  NeighborKit
//
//  Created by Noah Emmet on 2/18/16.
//  Copyright © 2016 Sticks. All rights reserved.
//

import Foundation

public typealias GridPoint = (row: Int, column: Int)

public struct Grid {
	public let rows: Int
	public let columns: Int
	public init(rows: Int, columns: Int) {
		self.rows = rows
		self.columns = columns
	}
}

// MARK: - SequenceType / AnyGenerator

extension Grid: SequenceType {
	public func generate() -> AnyGenerator<GridPoint> {
		var isFirstElement = true
		var nextPoint: GridPoint = (0, 0)
		return AnyGenerator<GridPoint> {
			if isFirstElement {
				isFirstElement = false
				return nextPoint
			}
			
			if nextPoint.row == self.rows - 1 && nextPoint.column == self.columns - 1 {
				// last row in last column
				return nil
			} else if nextPoint.row == self.rows - 1 {
				// last row in a column
				nextPoint.row = 0
				nextPoint.column += 1
			} else {
				// a row in a column
				nextPoint.row += 1
			}
			
			return nextPoint
		}
	}
}
