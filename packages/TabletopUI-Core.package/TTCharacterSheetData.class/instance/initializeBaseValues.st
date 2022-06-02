initialize-release
initializeBaseValues

	self baseValues: Dictionary new.
	self baseValues
		at: #strength put: self defaultBaseValue;
		at: #dexterity put: self defaultBaseValue;
		at: #constitution put: self defaultBaseValue;
		at: #intelligence put: self defaultBaseValue;
		at: #wisdom put: self defaultBaseValue;
		at: #charisma put: self defaultBaseValue