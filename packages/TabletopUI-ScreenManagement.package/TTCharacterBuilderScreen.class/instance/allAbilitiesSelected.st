screen management
allAbilitiesSelected

	^ (self choices at: #abilities) noneSatisfy: [ :ability | ability = 0 ]