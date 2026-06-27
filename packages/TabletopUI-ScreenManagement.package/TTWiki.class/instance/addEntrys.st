display
addEntrys
	
	self addSpell: 'Acid Splash' 
	castingTime: '1 action' 
	range: '60 feet' 
	components: 'V, S' 
	duration: 'Instantaneous' 
	class: 'Artificer, Sorcerer, Wizard, Occultist, Spellblade'
	description: 'You hurl a bubble of acid. Choose one creature within range, or choose two creatures within range that are within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage.'.

	self addItem: 'Battleaxe' 
	type: 'Melee Weapon (martial)' 
	damage: '1d8' 
	damageType: 'Slashing' 
	rarity: 'None' 
	properties: 'Versatile' 
	weight: 4.

	self addMonster: 'Bronze Dragon' 
	description: 'Bronze dragons usually make their homes near or under the sea.'  , Character cr asString , 'The region containing an adult or ancient bronze dragons lair is ' , Character cr asString , 'changed by its presence, creating the following effects:'
	lair: {'Buoying Currents:Creatures within 1 mile of the lair that lack a Swim Speed' , Character cr asString ,' ignore the extra cost of movement while swimming.' .
	'Sun and Storms: While in its lair, the dragon can cast Control Weather,', Character cr asString ,' requiring no Material components and using the same spellcasting ability as its Spellcasting action. ', Character cr asString ,'When casting the spell this way, the dragon can control the weather within 1 mile of its lair,', Character cr asString ,' regardless if the dragon is inside or outside.' .
	'If the dragon dies or moves its lair elsewhere, these effects end immediately.'}
	traits: {
	'Amphibious. The dragon can breathe air and water.' .
	'Legendary Resistance (3/Day, or 4/Day in Lair).', Character cr asString ,' If the dragon fails a saving throw, it can choose to succeed instead.'}
	actions: {
	'Multiattack. The dragon makes three Rend attacks. ', Character cr asString ,'It can replace one attack with a use of (A) Repulsion Breath ', Character cr asString ,'or (B) Spellcasting to cast Guiding Bolt (level 2 version).'}.
	
	self addSubclass: 'War Mind'
	className: 'Subclass'
	sections: {'Level 3: Bonus Proficiencies' -> 'You gain proficiency in two of the following skills: Athletics, Persuasion, or Survival.
Additionally, you gain proficiency with Martial Weapons and armor training with Medium Armor and Shields.'.
        'Level 3: Fighting Style' -> 'You have honed your martial prowess. You gain one of the following Fighting Style feats of your choice:
Archery, Defense, Dueling, or Protection.'.
        'Level 3: Combat Analysis' -> 'Your analysis of a creature shows you the best ways to harm it. Whenever you add a Perfect Plan die to an attack roll made against a creature youre analyzing, if the attack hits, you add your Proficiency Bonus to the damage.'.
        'Level 6: Extra Attack' -> 'You can attack twice, instead of once, whenever you take the Attack action.'}.

	self addSpell: 'Fireball'
	castingTime: '1 action'
	range: '150 feet'
	components: 'V, S, M (A tiny ball of bat guano and sulfur)'
	duration: 'Instantaneous'
	class: 'Sorcerer, Wizard, Spellblade'
	description: 'A bright streak flashes from your pointing finger to a point you choose within range'  , Character cr asString , 'and then blossoms with a low roar into an explosion of flame.'  , Character cr asString , 'Each creature in a 20-foot-radius sphere centered on that point '  , Character cr asString , 'must make a Dexterity saving throw. A target takes 8d6 fire damage on a failed save,'  , Character cr asString , 'or half as much damage on a successful one.'  , Character cr asString , 'The fire spreads around corners. '  , Character cr asString , 'It ignites flammable objects in the area that arent being worn or carried.'.

	self addItem: 'Longsword'
	type: 'Melee Weapon (martial)'
	damage: '1d8'
	damageType: 'Slashing'
	rarity: 'None'
	properties: 'Versatile'
	weight: 3.
	
	self addMonster: 'Goblin'
	description: 'Small Humanoid (Goblinoid), Neutral Evil.'  , Character cr asString , 'Goblins are small, black-hearted humanoids that lair in despoiled dungeons '  , Character cr asString , 'and other dismal settings. '  , Character cr asString , 'Individually weak, they gather in large numbers to torment other creatures.'
	lair: {'Goblin lairs are usually cramped tunnels filled with traps and ambush points.'}
	traits: {'Nimble Escape. The goblin can take the Disengage or Hide action as a bonus action.'}
	actions: {'Scimitar. Melee attack: +4 to hit, reach 5 ft. Hit: 5 (1d6+2) slashing damage.'.
'Shortbow. Ranged attack: +4 to hit, range 80/320 ft. Hit: 5 (1d6+2) piercing damage.'}.
	
	self addSubclass: 'Path of the Berserker'
	className: 'Barbarian Subclass'
	sections: {'Level 3: Frenzy' -> 'If you use Reckless Attack while your Rage is active, you deal extra damage to the first target you hit on your turn with a Strength-based attack. To determine the extra damage, roll a number of d6s equal to your Rage Damage bonus, and add them together. The damage has the same type as the weapon or Unarmed Strike used for the attack.'.
'Level 6: Mindless Rage' -> 'You have Immunity to the Charmed and Frightened conditions while your Rage is active. If youre Charmed or Frightened when you enter your Rage, the condition ends on you.'.
'Level 10: Retaliation' -> 'When you take damage from a creature that is within 5 feet of you, you can take a Reaction to make one melee attack against that creature, using a weapon or an Unarmed Strike.'.
'Level 14: Intimidating Presence' -> 'As a Bonus Action, you can strike terror into others with your menacing presence and primal power. When you do so, each creature of your choice in a 30-foot Emanation originating from you must make a Wisdom saving throw (DC 8 plus your Strength modifier and Proficiency Bonus). On a failed save, a creature has the Frightened condition for 1 minute. At the end of each of the Frightened creatures turns, the creature repeats the save, ending the effect on itself on a success.'}


	