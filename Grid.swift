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

// MARK: - SequenceType

extension Grid: SequenceType {
	public func generate() -> GridGenerator {
		return GridGenerator(grid: self)
	}
}

// MARK: - GeneratorType

public struct GridGenerator: GeneratorType {
	private let grid: Grid
	private var nextPoint: GridPoint = (0, 0)
	
	public typealias Element = GridPoint
	
	init(grid: Grid) {
		self.grid = grid
	}
	
	public func next() -> GridPoint? {
		let nextRow: Int
		let nextColumn: Int
		if nextPoint.row == grid.rows {
			if nextPoint.column == grid.columns {
				return nil
			} else {
				nextRow = 0
				nextColumn = nextPoint.column + 1
			}
		} else {
			nextRow = nextPoint.row + 1
			nextColumn = nextPoint.column
		}
		return (nextRow, nextColumn)
	}
}