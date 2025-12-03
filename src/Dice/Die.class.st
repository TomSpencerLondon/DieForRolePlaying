Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]

{ #category : 'as yet unclassified' }
Die >> faces [
	^ faces
]

{ #category : 'as yet unclassified' }
Die >> faces: aNumber [
	faces := aNumber
]

{ #category : 'as yet unclassified' }
Die >> initialize [
	faces := 6
]

{ #category : 'as yet unclassified' }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' (';
		print: faces;
		nextPutAll: ')'
]

{ #category : 'as yet unclassified' }
Die >> roll [
	^ faces atRandom
]
