testing
test02IgnoresUnrelatedAspect
    manager update: #somethingElse.
    self assert: (manager networkmanager sendCount isNil
        or: [manager networkmanager sendCount equals: 0])