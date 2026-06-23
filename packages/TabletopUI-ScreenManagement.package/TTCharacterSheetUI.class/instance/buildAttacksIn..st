build
buildAttacksIn: aMorph

	self buildAttackFields: #(damage bonus)
		extent: 50 @ 30
		at: 30 @ 42
		in: aMorph.
	self buildAttackFields: #(damageType name)
		extent: 95 @ 30
		at: 155 @ 42
		in: aMorph