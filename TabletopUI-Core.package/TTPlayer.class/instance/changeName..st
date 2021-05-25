accessing
changeName: aText

    (self isValidName: (aText asString)) ifTrue: [
        self name: aText asString]
        ifFalse: [
            Utilities 
                informUser: 'Playernames should not contain more than ', self class maximalNameLength, ' characters.'
                during: [(Delay forSeconds: 2) wait]].

    self changed: #name