as yet unclassified
addEntrys
	
	self addSpell: 'Acid Splash' 
	school: 'Evocation Cantrip (Sorcerer, Wizard)' 
	castingTime: 'Action' 
	range: '60 feet' 
	components: 'V, S' 
	duration: 'Instantaneous' 
	description: 'You create an acidic bubble at a point within range, where it explodes in a 5-foot-radius Sphere.'.

    	self addItem: 'Battleaxe' 
	type: 'Melee Weapon (martial)' 
	damage: '1d8' 
	damageType: 'Slashing' 
	rarity: 'None' 
	properties: 'Versatile' 
	weight: 4.

	self addMonster: 'Bronze Dragon' 
	description: 'Bronze dragons usually make their homes near or under the sea.'  , Character cr asString , 'The region containing an adult or ancient bronze dragons lair is ' , Character cr asString , 'changed by its presence, creating the following effects:'
     	lair: {
	'Buoying Currents:Creatures within 1 mile of the lair that lack a Swim Speed' , Character cr asString ,' ignore the extra cost of movement while swimming.' .
	'Sun and Storms: While in its lair, the dragon can cast Control Weather,', Character cr asString ,' requiring no Material components and using the same spellcasting ability as its Spellcasting action. ', Character cr asString ,'When casting the spell this way, the dragon can control the weather within 1 mile of its lair,', Character cr asString ,' regardless if the dragon is inside or outside.' .
	'If the dragon dies or moves its lair elsewhere, these effects end immediately.'}
     	traits: {
	'Amphibious. The dragon can breathe air and water.' .
	'Legendary Resistance (3/Day, or 4/Day in Lair).', Character cr asString ,' If the dragon fails a saving throw, it can choose to succeed instead.'}
     	actions: {
	'Multiattack. The dragon makes three Rend attacks. ', Character cr asString ,'It can replace one attack with a use of (A) Repulsion Breath ', Character cr asString ,'or (B) Spellcasting to cast Guiding Bolt (level 2 version).'}.
	
	self addSubclass: 'War Mind'
	className: 'Subclass'
	sections: {
        'Level 3: Bonus Proficiencies' -> 'You gain proficiency in two of the following skills: Athletics, Persuasion, or Survival.
Additionally, you gain proficiency with Martial Weapons and armor training with Medium Armor and Shields.'.
        'Level 3: Fighting Style' -> 'You have honed your martial prowess. You gain one of the following Fighting Style feats of your choice:
Archery, Defense, Dueling, or Protection.'.
        'Level 3: Combat Analysis' -> 'Your analysis of a creature shows you the best ways to harm it. Whenever you add a Perfect Plan die to an attack roll made against a creature youre analyzing, if the attack hits, you add your Proficiency Bonus to the damage.'.
        'Level 6: Extra Attack' -> 'You can attack twice, instead of once, whenever you take the Attack action.'}

	