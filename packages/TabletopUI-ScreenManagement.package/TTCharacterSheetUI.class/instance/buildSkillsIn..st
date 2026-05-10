build
buildSkillsIn: aMorph

	| xOffset yOffset yDistance skills |
	Transcript show: 'persuasion missing, weird bug with dictionary'.
	xOffset := 21.
	yOffset := 52.
	yDistance := 31.5.
	skills := #(#acrobatics #animalHandling #arcana #athletics #deception #history #insight #intimidation #investigation #medicine #nature #perception #performance #performance #religion #sleightOfHand #stealth #survival).
	skills doWithIndex: [:skill :n |
		self addSkill: skill at: xOffset @ (yDistance * (n - 1) + yOffset) in: aMorph].
