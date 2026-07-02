initialization
monsterForm: aMonsterName

	^ (TTImageLoader loadFormFromFileNamed: 'monster-tokens/', ((aMonsterName asLowercase) copyReplaceAll: ' ' with: '_') , '.png') scaledToSize: self tokenExtent

	