testing
test03SpeedTextWithAdditionalSpeeds

	self display monster: TTMonster youngRedDragon.
	self assert: self display speedText equals: '40 ft., Climb 40 ft., Fly 80 ft.'