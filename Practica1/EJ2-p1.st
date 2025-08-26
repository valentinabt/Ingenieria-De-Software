!classDefinition: #Bill category: #'EJ2-p1'!
DenotativeObject subclass: #Bill
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ2-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Bill class' category: #'EJ2-p1'!
Bill class
	instanceVariableNames: 'energia'!

!Bill class methodsFor: 'acciones' stamp: 'VS 8/26/2025 16:26:26'!
caminar: unaCantidadDeKilometros

energia := energia - 3 - unaCantidadDeKilometros .

! !

!Bill class methodsFor: 'acciones' stamp: 'VS 8/26/2025 16:27:01'!
comer: unaCantidadDeKilosDeCerebro

energia := energia + 4 * unaCantidadDeKilosDeCerebro .! !

!Bill class methodsFor: 'acciones' stamp: 'VS 8/26/2025 16:27:15'!
energia

^energia ! !
