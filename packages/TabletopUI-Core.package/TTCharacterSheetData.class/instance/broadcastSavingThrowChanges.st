accessing - saving throws
broadcastSavingThrowChanges

	self class savingThrowAbilities do: [:ability | self changed: (ability , 'SavingThrow') asSymbol]