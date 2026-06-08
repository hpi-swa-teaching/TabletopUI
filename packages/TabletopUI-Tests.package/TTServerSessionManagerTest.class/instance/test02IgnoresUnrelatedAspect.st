testing
test02IgnoresUnrelatedAspect
    manager update: #somethingElse.
    self assert: (manager networkManager sendCount isNil
        or: [manager networkManager sendCount equals: 0])