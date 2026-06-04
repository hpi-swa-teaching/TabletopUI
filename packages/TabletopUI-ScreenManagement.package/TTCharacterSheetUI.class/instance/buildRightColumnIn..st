build
buildRightColumnIn: aMorph

	Transcript show: 'placeholder values'.
	self addField: #personalityTraits
		sized: 150 @ 70
		at: 20 @ 20
		in: aMorph.
	self addField: #ideals
		sized: 150 @ 70 
		at: 20 @ 115
		in: aMorph.
	self addField: #bonds
		sized: 150 @ 70
		at: 20 @ 210
		in: aMorph.
	self addField: #flaws
		sized: 150 @ 70
		at: 20 @ 305
		in: aMorph.
	self addField: #appearance
		sized: 150 @ 155
		at: 20 @ 400
		in: aMorph.
	self addField: #treasure
		sized: 150 @ 155
		at: 20 @ 588
		in: aMorph.	