testing
test11AssembleRunsAppliesEmphasisPerRange

	| text |
	text := self display assembleRuns: {
		{'AB'. {TextEmphasis bold}}.
		{'CD'. {TextEmphasis italic}}}.
	self
		assert: text asString equals: 'ABCD';
		assert: (text emphasisAt: 1) equals: (text emphasisAt: 2);
		deny: (text emphasisAt: 2) equals: (text emphasisAt: 3)