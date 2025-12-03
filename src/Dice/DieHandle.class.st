Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DieHandle >> + aDieHandle [ 
	| newHandle |
	newHandle := DieHandle new.
	dice do: [ :each | newHandle addDie: each ].
	aDieHandle dice do: [ :each | newHandle addDie: each ].
	^ newHandle
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [ 
	dice add: aDie
]

{ #category : 'accessing' }
DieHandle >> dice [
	^ dice
]

{ #category : 'adding' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : 'adding' }
DieHandle >> initialize [
	dice := OrderedCollection new
]

{ #category : 'as yet unclassified' }
DieHandle >> roll [
    ^ dice sum: [ :each | each roll ]
]
