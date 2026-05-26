build
buildInfoBlockIn: aMorph

	Transcript show: 'huge amount of placeholders'.
	self addField: #levelString
		at: 80 @ 30
		in: aMorph. "Name"
	self addField: #strength
		at: 80 @ 105
		in: aMorph. "Background"
	self addField: #className
		at: 228 @ 30
		in: aMorph.
	self addField: #strength
		at: 290 @ 105
		in: aMorph. "Race"
	self addField: #experiencePoints
		sized: 120@ 35
		at: 460 @ 35
		in: aMorph.
	self addField: #strength
		at: 500 @ 105
		in: aMorph. "Alignment"