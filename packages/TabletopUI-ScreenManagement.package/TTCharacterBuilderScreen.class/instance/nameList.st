as yet unclassified
nameList

	| abilities |

	currentStep = 3 
		ifFalse: [^ (TTCharacterBuilderScreen options) at: self currentStep]
		ifTrue: [
			abilities := OrderedCollection new.
			 ((TTCharacterBuilderScreen options) at: self currentStep) withIndexDo: [ :name :index |
				| currentScore |
				currentScore := (self choices at: currentStep) at: index.
				(currentScore = 0) ifTrue: [currentScore := 'not selected'].
				abilities add: '[ ', currentScore ,' ] ', name].
			^ abilities]