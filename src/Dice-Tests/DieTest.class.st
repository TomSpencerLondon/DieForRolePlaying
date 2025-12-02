Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
DieTest >> testRolling [
	| d|
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
