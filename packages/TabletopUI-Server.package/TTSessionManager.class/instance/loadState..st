as yet unclassified
loadState: aDict

	self applyingRemoteState: true.

	[self window loadState: aDict] ensure: [self applyingRemoteState: false]