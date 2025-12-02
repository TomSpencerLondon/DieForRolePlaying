Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
DieHandle >> addDie: aDie [ 
	dice add: aDie
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
