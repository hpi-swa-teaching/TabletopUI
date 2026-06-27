as yet unclassified
nameList

	| abilities |

	(#(#abilities #cantrips #spells) includes: self currentStep)
		ifFalse: [^ self getOptionsForCurrentStep]
		ifTrue: [
			abilities := OrderedCollection new.
			 self getOptionsForCurrentStep withIndexDo: [ :name :index |
				| currentScore |
				currentScore := self getChoicesForCurrentStep at: (self getOptionsForCurrentStep at: index).
				(#(0 '0') includes: currentScore) ifTrue: [currentScore := 'not selected'].
				abilities add: '[ ', currentScore ,' ] ', name].
			^ abilities]