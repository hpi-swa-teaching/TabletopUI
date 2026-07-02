build
buildInfoBlockIn: aMorph

	self addEditableField: #characterName
		sized: self infoFieldExtent
		at: 18 @ 27
		in: aMorph.
	self addEditableField: #background
		sized: self infoFieldExtent
		at: 18 @ 97
		in: aMorph.
	self addField: #className
		at: 228 @ 27
		in: aMorph.
	self addEditableField: #race
		sized: self infoFieldExtent
		at: 228 @ 97
		in: aMorph.
	self addEditableField: #experiencePoints
		sized: 120 @ 35
		at: 460 @ 35
		in: aMorph.
	self addEditableField: #alignment
		sized: 140 @ 35
		at: 440 @ 97
		in: aMorph.