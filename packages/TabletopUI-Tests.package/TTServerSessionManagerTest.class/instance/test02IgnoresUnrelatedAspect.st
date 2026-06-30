testing
test02IgnoresUnrelatedAspect
    self manager update: #somethingElse.
    self assert: (self manager networkmanager sendCount isNil
        or: [self manager networkmanager sendCount equals: 0])