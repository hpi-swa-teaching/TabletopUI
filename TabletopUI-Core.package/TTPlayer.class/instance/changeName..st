accessing
changeName: aText

    (aText asString size <= self class maximalNameLength) ifTrue: [
        self name: aText asString]
        ifFalse: [
            Utilities 
                informUser: 'Playernames should not contain more than ', self class maximalNameLength, ' characters.'
                during: [(Delay forSeconds: 2) wait]].

    self changed: #name