Extension { #name : #Dictionary }

{ #category : #'*Tabular' }
Dictionary >> associationsCollect: aBlock [ 
	"Evaluate aBlock with each of my associations as the argument. Collect
	into a new dictionary, only those associations for which aBlock evaluates
	to true."

	| newCollection |
	newCollection := self species new.
	self associationsDo:[:each |
		newCollection add: (aBlock value: each).
	].
	^newCollection
]
