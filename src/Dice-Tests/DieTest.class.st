Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Tests',
	#package : 'Dice-Tests'
}

{ #category : 'tests' }
DieTest >> testDSL [
	| handle |
	handle := 2 D: 6.
	self assert: handle diceNumber equals: 2
]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testPrintOn [
	self assert: (Die withFaces: 6) printString equals: 'a Die (6)'
]

{ #category : 'tests' }
DieTest >> testRolling [
	| d|
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
