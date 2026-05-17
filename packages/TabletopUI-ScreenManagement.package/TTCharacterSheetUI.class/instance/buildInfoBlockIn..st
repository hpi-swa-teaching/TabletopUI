build
buildInfoBlockIn: aMorph

	Transcript show: 'huge amount of placeholders'.
	self addField: #levelString at: 80 @ 35 in: aMorph. "Name"
	self addField: #perception at: 80 @ 105 in: aMorph. "Background"
	self addField: #proficiencyValueString at: 290 @ 35 in: aMorph. "Class"
	self addField: #proficiencyValueString at: 290 @ 105 in: aMorph. "Race"
	self addField: #proficiencyValueString at: 500 @ 35 in: aMorph. "XP"
	self addField: #proficiencyValueString at: 500 @ 105 in: aMorph. "Alignment"