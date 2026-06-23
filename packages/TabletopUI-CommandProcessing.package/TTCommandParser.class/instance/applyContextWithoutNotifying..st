context managing
applyContextWithoutNotifying: aContext

    self context ifNotNil: [self context removeDependent: self].
    self context: aContext.
    self context addDependent: self