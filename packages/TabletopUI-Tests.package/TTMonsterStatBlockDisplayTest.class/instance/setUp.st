running
setUp

	self defaultDisplay: TTMonsterStatBlockDisplay new.
	self defaultDisplay monster: (TTMonster fromSpec: self exampleMonsterSpec). 
	
	self exhaustiveDisplay: TTMonsterStatBlockDisplay new.
	self exhaustiveDisplay monster: (TTMonster fromSpec: self exampleMonsterSpecWithAllOptionalFields)
	
	