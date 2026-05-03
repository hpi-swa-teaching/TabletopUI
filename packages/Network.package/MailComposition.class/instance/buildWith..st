toolbuilder
buildWith: aBuilder

	| spec |

	spec := self createSpecsWith: aBuilder.
	
	^ aBuilder build: spec