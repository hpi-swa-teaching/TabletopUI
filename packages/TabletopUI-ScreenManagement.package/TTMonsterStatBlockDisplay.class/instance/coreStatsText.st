formatting
coreStatsText

	| runs addLine |
	runs := OrderedCollection new.
	addLine := [:label :value |
		(value notNil and: [value asString notEmpty]) ifTrue: [
			runs add: {label, ': '. {TextEmphasis bold. TextColor color: self accentColor}}.
			runs add: {value asString, self newline. {TextColor color: self accentColor}}]].

	addLine value: 'Armor Class' value: self sheet armorClass.
	addLine value: 'Hit Points' value: self sheet maxHP.
	addLine value: 'Speed' value: self speedText.
	addLine value: 'Saving Throws' value: self sheet savingThrows.
	addLine value: 'Skills' value: self sheet skills.
	addLine value: 'Senses' value: self sheet senses.
	addLine value: 'Languages' value: self sheet languages.
	addLine value: 'Challenge' value: self sheet challengeRating.
	addLine value: 'Proficiency Bonus' value: (self signed: self sheet proficiencyBonus asString).
	addLine value: 'Damage Vulnerabilities' value: self sheet damageVulnerabilities.
	addLine value: 'Damage Resistances' value: self sheet damageResistances.
	addLine value: 'Damage Immunities' value: self sheet damageImmunities.
	addLine value: 'Condition Immunities' value: self sheet conditionImmunities.

	^ self assembleRuns: runs
