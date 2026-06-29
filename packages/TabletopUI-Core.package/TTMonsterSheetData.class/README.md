A TTMonsterSheetData extends the character sheet data with the monster specific parts of the stat block (size, type, alignment, challenge rating, senses, languages, resistances, immunities, traits, skills, actions and legendary actions).

It is filled via initializeFromSpec: with a Dictionary from the schema ('armor_class', 'hit_points', 'strength', 'actions', ...)..

Instance Variables
	actions:		<Dictionary>
	additionalSpeeds:		<Dictionary>
	challengeRating:		<String>
	conditionImmunities:		<String>
	damageImmunities:		<String>
	damageResistances:		<String>
	damageVulnerabilities:		<String>
	languages:		<String>
	legendaryActions:		<Dictionary>
	monsterSize:		<String>
	monsterType:		<String>
	savingThrows:		<String>
	senses:		<String>
	skills:		<String>
	traits:		<Dictionary>

actions, additionalSpeeds, challengeRating, conditionImmunities, 
damageImmunities, damageResistances, damageVulnerabilities, 
languages, legendaryActions, monsterSize, monsterType, 
savingThrows, senses, skills, traits
	- store the monster specific parts 
	