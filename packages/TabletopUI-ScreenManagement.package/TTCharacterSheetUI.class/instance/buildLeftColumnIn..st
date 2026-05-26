build
buildLeftColumnIn: aMorph

	Transcript show: 'placeholder values'.
	self addField: #strength
		sized: 150 @ 330
		at: 20 @ 40
		in: aMorph. "Background"
	self addField: #strength
		sized: 150 @ 330
		at: 20 @ 420
		in: aMorph. "Organizations"	