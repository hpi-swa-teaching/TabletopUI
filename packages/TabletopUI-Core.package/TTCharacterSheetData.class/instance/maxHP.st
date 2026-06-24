accessing-health
maxHP

	| constitutionModifier hitDieAverage |
	constitutionModifier := self modifierOf: #constitution.
	hitDieAverage := (self hitDieType // 2) + 1.
	^ (self hitDieType + constitutionModifier + ((self level - 1) * (hitDieAverage + constitutionModifier))) asString