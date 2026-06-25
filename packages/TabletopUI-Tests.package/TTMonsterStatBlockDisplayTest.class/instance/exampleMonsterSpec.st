helpers
exampleMonsterSpec

	^ Dictionary new
		at: #name put: 'Goblin';
		at: #size put: 'Small';
		at: #type put: 'Humanoid (Goblinoid)';
		at: #alignment put: 'Neutral Evil';
		at: #armor_class put: 15;
		at: #hit_points put: 7;
		at: #speed put: 30;
		at: #strength put: 8;
		at: #dexterity put: 14;
		at: #constitution put: 10;
		at: #intelligence put: 10;
		at: #wisdom put: 8;
		at: #charisma put: 8;
		at: #senses put: 'Darkvision 60 ft., Passive Perception 9';
		at: #languages put: 'Common, Goblin';
		at: #challenge_rating put: '1/4';
		at: #proficiency_value put: 2;
		at: #skills put: 'Stealth +6';
		at: #special_abilities put: {
			Dictionary new
				at: #name put: 'Nimble Escape';
				at: #desc
					put: 'The goblin can take the Disengage or Hide action as a bonus action on each of its turns.';
				yourself};
		at: #actions put: {
			Dictionary new
				at: #name put: 'Scimitar';
				at: #desc
					put: 'Melee Weapon Attack: +4 to hit, reach 5 ft., one target. Hit: 5 (1d6 + 2) slashing damage.';
				yourself.
			Dictionary new
				at: #name put: 'Shortbow';
				at: #desc
					put: 'Ranged Weapon Attack: +4 to hit, range 80/320 ft., one target. Hit: 5 (1d6 + 2) piercing damage.';
				yourself};
		yourself