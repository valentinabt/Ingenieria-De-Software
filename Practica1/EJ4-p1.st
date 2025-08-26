!classDefinition: #I category: #'EJ4-p1'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #'EJ4-p1'!
I class
	instanceVariableNames: ''!

!I class methodsFor: 'error description' stamp: 'VS 8/26/2025 18:44:57'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor

^'no se puede dividir por un número mayor!!'! !

!I class methodsFor: 'error description' stamp: 'VS 8/26/2025 18:40:06'!
descripcionDeErrorDeNumerosNegativosNoSoportados

^'el resultado no es representable' ! !


!I class methodsFor: 'asserts' stamp: 'VS 8/26/2025 18:49:02'!
assertValidDivision: aDividend

	aDividend =  I ifFalse: [self signalNoSePuedeDividirPorUnNumeroMayor ]! !

!I class methodsFor: 'asserts' stamp: 'VS 8/26/2025 18:48:51'!
signalNoSePuedeDividirPorUnNumeroMayor

	^ self error: I descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor! !


!I class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 17:18:31'!
* aMultiplicand

^aMultiplicand ! !

!I class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 17:16:10'!
+ anAdder

^ anAdder next! !

!I class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:40:49'!
- aSustrahend

self error: I descripcionDeErrorDeNumerosNegativosNoSoportados ! !

!I class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:47:36'!
/ aDividend

self assertValidDivision: aDividend.
^I

! !

!I class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 17:40:54'!
next

| next |
next := II.
II previous: self .
^next ! !

!I class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:40:40'!
previous

self error: I descripcionDeErrorDeNumerosNegativosNoSoportados ! !


!classDefinition: #II category: #'EJ4-p1'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: #'EJ4-p1'!
II class
	instanceVariableNames: 'previous next'!

!II class methodsFor: 'setters' stamp: 'VS 8/26/2025 19:03:01'!
previous: aPreviousNumber

previous := aPreviousNumber ! !


!II class methodsFor: 'error description' stamp: 'VS 8/26/2025 18:42:59'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor

^'no se puede dividir por un número mayor!!'

! !


!II class methodsFor: 'asserts' stamp: 'VS 8/26/2025 18:59:10'!
assertSeLePuedeRestar: aSustrahend

self < aSustrahend ifTrue: [self signalNumerosNegativosNoSoportados ] .! !

!II class methodsFor: 'asserts' stamp: 'VS 8/26/2025 18:59:20'!
assertSePuedeDividirPor: aDividend

self < aDividend ifTrue: [self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor ].! !

!II class methodsFor: 'asserts' stamp: 'VS 8/26/2025 18:56:22'!
signalNoSePuedeDividir

self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor ! !

!II class methodsFor: 'asserts' stamp: 'VS 8/26/2025 18:54:04'!
signalNumerosNegativosNoSoportados

 self error: I descripcionDeErrorDeNumerosNegativosNoSoportados! !


!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:21:12'!
* aMultiplicand

|res|.
res := self.

(aMultiplicand name size -1) timesRepeat: [res := res + self].
^ res! !

!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:50:09'!
+ anAdder

| res|.

res := self .

anAdder name size timesRepeat: [res := res next].
^res! !

!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:54:50'!
- aSustrahend

|res |.

self assertSeLePuedeRestar: aSustrahend .

res := self.
aSustrahend name size timesRepeat: [res := res previous ].
^res ! !

!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:57:04'!
/ aDividend

|divisor res|.
self assertSePuedeDividirPor: aDividend.
res := I.
divisor := self.
[divisor name size  - aDividend name size > 0] whileTrue: [res := res next. divisor := divisor - aDividend ].

^res 


! !

!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 18:58:41'!
< aNumber

^aNumber name size >= self name size! !

!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 19:02:54'!
next

next := self createChildNamed: (self name asString , 'I').
next previous: self .
^next ! !

!II class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 19:03:01'!
previous


^previous ! !


!classDefinition: #III category: #'EJ4-p1'!
II subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #IIII category: #'EJ4-p1'!
III subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!
