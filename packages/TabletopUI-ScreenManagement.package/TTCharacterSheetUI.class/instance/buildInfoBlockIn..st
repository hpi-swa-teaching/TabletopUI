build
buildInfoBlockIn: aMorph

	self addField: #characterName
		sized: 150 @ 35
		at: 18 @ 27
		in: aMorph.
	self addField: #background
		sized: 150 @ 35
		at: 18 @ 97
		in: aMorph.
	self addField: #className
		at: 228 @ 27
		in: aMorph.
	self addField: #race
		sized: 150 @ 35
		at: 228 @ 97
		in: aMorph.
	self addField: #experiencePoints
		sized: 120 @ 35
		at: 460 @ 35
		in: aMorph.
	self addField: #alignment
		sized: 140 @ 35
		at: 440 @ 97
		in: aMorph.