as yet unclassified
newWith: aTTCharacterAdministration and: anInputField

	^ self new
			characterAdministration: aTTCharacterAdministration;
			inputField: anInputField;
			initializeDiceAmounts;
			modifier: 0;
			aboutToBeClosed: false;
			yourself