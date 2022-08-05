result
resultValue

	^ self rolls inject: self modifier into: [:aSum :aRoll | aSum + aRoll]