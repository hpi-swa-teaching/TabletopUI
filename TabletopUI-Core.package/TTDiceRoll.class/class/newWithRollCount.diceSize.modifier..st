initialization
newWithRollCount: count diceSize: size modifier: modifier
	
	^ self new
		modifier: modifier;
		size: size;
		roll: size multipleTimes: count;
		yourself