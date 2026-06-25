as yet unclassified
nameList

	| abilities |

	(#(#abilities #cantrips #spells) includes: self currentStep)
		ifFalse: [^ (TTCharacterBuilderScreen options) at: self currentStep.]
		ifTrue: [
			abilities := OrderedCollection new.
			 ((TTCharacterBuilderScreen options) at: self currentStep) withIndexDo: [ :name :index |
				| currentScore |
				currentScore := (self choices at: self currentStep) at:( ((TTCharacterBuilderScreen options) at: self currentStep) at: index).
				(#(0 '0') includes: currentScore) ifTrue: [currentScore := 'not selected'].
				abilities add: '[ ', currentScore ,' ] ', name].
			^ abilities]