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


!I class methodsFor: 'private' stamp: 'VS 9/2/2025 16:50:16'!
nameOfNext

^self name , 'I'! !

!I class methodsFor: 'private' stamp: 'VS 9/2/2025 17:24:35'!
value

^1! !


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

!I class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:19:27'!
next

| next |
next := II.
II previous: self .
II value: 2.
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
	instanceVariableNames: 'next previous value'!

!II class methodsFor: 'setters' stamp: 'VS 8/26/2025 19:03:01'!
previous: aPreviousNumber

previous := aPreviousNumber ! !

!II class methodsFor: 'setters' stamp: 'VS 9/2/2025 17:18:59'!
value: aValue

value := aValue! !


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


!II class methodsFor: 'private' stamp: 'VS 9/2/2025 17:55:43'!
nameOfNext

(self name asString endsWith: 'CDXCIX') ifTrue: [^((self name asString withoutSuffix: 'CDXCIX'), 'D')].
(self name asString endsWith: 'CCCXCIX') ifTrue: [^((self name asString withoutSuffix: 'CCCXCIX'), 'CL')].
(self name asString endsWith: 'XCIX') ifTrue: [^((self name asString withoutSuffix: 'XCIX') , 'C')].
(self name asString endsWith: 'LXXXIX') ifTrue: [^((self name asString withoutSuffix: 'LXXXIX'), 'XC')].
(self name asString endsWith: 'XXXIX') ifTrue: [^((self name asString withoutSuffix: 'XXXIX') , 'XL')].
(self name asString endsWith: 'XLIX') ifTrue: [^((self name asString withoutSuffix: 'XLIX') , 'L')].
(self name asString endsWith: 'VIII') ifTrue: [^((self name asString withoutSuffix: 'VIII') , 'IX')].
(self name asString endsWith: 'III') ifTrue: [^((self name asString withoutSuffix: 'III') , 'IV')].
(self name asString endsWith: 'IV') ifTrue: [^((self name asString withoutSuffix: 'IV') , 'V')].
(self name asString endsWith: 'IX') ifTrue: [^((self name asString withoutSuffix: 'IX') , 'X')].


^self name asString , 'I'! !

!II class methodsFor: 'private' stamp: 'VS 9/2/2025 17:23:42'!
value

(self = II) ifTrue: [^2].

^self previous value + 1! !


!II class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:20:10'!
* aMultiplicand

|res|.
res := self.

(aMultiplicand value) timesRepeat: [res := res + self].
^ res! !

!II class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:20:18'!
+ anAdder

| res|.

res := self .

anAdder value timesRepeat: [res := res next].
^res! !

!II class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:20:24'!
- aSustrahend

|res |.

self assertSeLePuedeRestar: aSustrahend .

res := self.
aSustrahend value timesRepeat: [res := res previous ].
^res ! !

!II class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:20:54'!
/ aDividend

|divisor res|.
self assertSePuedeDividirPor: aDividend.
res := I.
divisor := self.
[divisor value  - aDividend value> 0] whileTrue: [res := res next. divisor := divisor - aDividend ].

^res 


! !

!II class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:21:03'!
< aNumber

^aNumber value >= self value! !

!II class methodsFor: 'operaciones' stamp: 'VS 9/2/2025 17:19:46'!
next

next := self createChildNamed: (self nameOfNext ).
next previous: self .
next value: self value +1 .
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


!classDefinition: #IV category: #'EJ4-p1'!
III subclass: #IV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #V category: #'EJ4-p1'!
IV subclass: #V
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #VI category: #'EJ4-p1'!
V subclass: #VI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #VII category: #'EJ4-p1'!
VI subclass: #VII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #VIII category: #'EJ4-p1'!
VII subclass: #VIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #IX category: #'EJ4-p1'!
VIII subclass: #IX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #X category: #'EJ4-p1'!
IX subclass: #X
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XI category: #'EJ4-p1'!
X subclass: #XI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XII category: #'EJ4-p1'!
XI subclass: #XII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XIII category: #'EJ4-p1'!
XII subclass: #XIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XIV category: #'EJ4-p1'!
XIII subclass: #XIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XV category: #'EJ4-p1'!
XIV subclass: #XV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XVI category: #'EJ4-p1'!
XV subclass: #XVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XVII category: #'EJ4-p1'!
XVI subclass: #XVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XVIII category: #'EJ4-p1'!
XVII subclass: #XVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XIX category: #'EJ4-p1'!
XVIII subclass: #XIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XX category: #'EJ4-p1'!
XIX subclass: #XX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXI category: #'EJ4-p1'!
XX subclass: #XXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXII category: #'EJ4-p1'!
XXI subclass: #XXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXIII category: #'EJ4-p1'!
XXII subclass: #XXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXIV category: #'EJ4-p1'!
XXIII subclass: #XXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXV category: #'EJ4-p1'!
XXIV subclass: #XXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXVI category: #'EJ4-p1'!
XXV subclass: #XXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXVII category: #'EJ4-p1'!
XXVI subclass: #XXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXVIII category: #'EJ4-p1'!
XXVII subclass: #XXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXIX category: #'EJ4-p1'!
XXVIII subclass: #XXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXX category: #'EJ4-p1'!
XXIX subclass: #XXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXI category: #'EJ4-p1'!
XXX subclass: #XXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXII category: #'EJ4-p1'!
XXXI subclass: #XXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXIII category: #'EJ4-p1'!
XXXII subclass: #XXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXIV category: #'EJ4-p1'!
XXXIII subclass: #XXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXV category: #'EJ4-p1'!
XXXIV subclass: #XXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXVI category: #'EJ4-p1'!
XXXV subclass: #XXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXVII category: #'EJ4-p1'!
XXXVI subclass: #XXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXVIII category: #'EJ4-p1'!
XXXVII subclass: #XXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XXXIX category: #'EJ4-p1'!
XXXVIII subclass: #XXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XL category: #'EJ4-p1'!
XXXIX subclass: #XL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLI category: #'EJ4-p1'!
XL subclass: #XLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLII category: #'EJ4-p1'!
XLI subclass: #XLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLIII category: #'EJ4-p1'!
XLII subclass: #XLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLIV category: #'EJ4-p1'!
XLIII subclass: #XLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLV category: #'EJ4-p1'!
XLIV subclass: #XLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLVI category: #'EJ4-p1'!
XLV subclass: #XLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLVII category: #'EJ4-p1'!
XLVI subclass: #XLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLVIII category: #'EJ4-p1'!
XLVII subclass: #XLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XLIX category: #'EJ4-p1'!
XLVIII subclass: #XLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #L category: #'EJ4-p1'!
XLIX subclass: #L
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LI category: #'EJ4-p1'!
L subclass: #LI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LII category: #'EJ4-p1'!
LI subclass: #LII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LIII category: #'EJ4-p1'!
LII subclass: #LIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LIV category: #'EJ4-p1'!
LIII subclass: #LIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LV category: #'EJ4-p1'!
LIV subclass: #LV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LVI category: #'EJ4-p1'!
LV subclass: #LVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LVII category: #'EJ4-p1'!
LVI subclass: #LVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LVIII category: #'EJ4-p1'!
LVII subclass: #LVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LIX category: #'EJ4-p1'!
LVIII subclass: #LIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LX category: #'EJ4-p1'!
LIX subclass: #LX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXI category: #'EJ4-p1'!
LX subclass: #LXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXII category: #'EJ4-p1'!
LXI subclass: #LXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXIII category: #'EJ4-p1'!
LXII subclass: #LXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXIV category: #'EJ4-p1'!
LXIII subclass: #LXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXV category: #'EJ4-p1'!
LXIV subclass: #LXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXVI category: #'EJ4-p1'!
LXV subclass: #LXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXVII category: #'EJ4-p1'!
LXVI subclass: #LXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXVIII category: #'EJ4-p1'!
LXVII subclass: #LXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXIX category: #'EJ4-p1'!
LXVIII subclass: #LXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXX category: #'EJ4-p1'!
LXIX subclass: #LXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXI category: #'EJ4-p1'!
LXX subclass: #LXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXII category: #'EJ4-p1'!
LXXI subclass: #LXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXIII category: #'EJ4-p1'!
LXXII subclass: #LXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXIV category: #'EJ4-p1'!
LXXIII subclass: #LXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXV category: #'EJ4-p1'!
LXXIV subclass: #LXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXVI category: #'EJ4-p1'!
LXXV subclass: #LXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXVII category: #'EJ4-p1'!
LXXVI subclass: #LXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXVIII category: #'EJ4-p1'!
LXXVII subclass: #LXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXIX category: #'EJ4-p1'!
LXXVIII subclass: #LXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXX category: #'EJ4-p1'!
LXXIX subclass: #LXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXI category: #'EJ4-p1'!
LXXX subclass: #LXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXII category: #'EJ4-p1'!
LXXXI subclass: #LXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXIII category: #'EJ4-p1'!
LXXXII subclass: #LXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXIV category: #'EJ4-p1'!
LXXXIII subclass: #LXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXV category: #'EJ4-p1'!
LXXXIV subclass: #LXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXVI category: #'EJ4-p1'!
LXXXV subclass: #LXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXVII category: #'EJ4-p1'!
LXXXVI subclass: #LXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXVIII category: #'EJ4-p1'!
LXXXVII subclass: #LXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #LXXXIX category: #'EJ4-p1'!
LXXXVIII subclass: #LXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XC category: #'EJ4-p1'!
LXXXIX subclass: #XC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCI category: #'EJ4-p1'!
XC subclass: #XCI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCII category: #'EJ4-p1'!
XCI subclass: #XCII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCIII category: #'EJ4-p1'!
XCII subclass: #XCIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCIV category: #'EJ4-p1'!
XCIII subclass: #XCIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCV category: #'EJ4-p1'!
XCIV subclass: #XCV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCVI category: #'EJ4-p1'!
XCV subclass: #XCVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCVII category: #'EJ4-p1'!
XCVI subclass: #XCVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCVIII category: #'EJ4-p1'!
XCVII subclass: #XCVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #XCIX category: #'EJ4-p1'!
XCVIII subclass: #XCIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #C category: #'EJ4-p1'!
XCIX subclass: #C
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CI category: #'EJ4-p1'!
C subclass: #CI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CII category: #'EJ4-p1'!
CI subclass: #CII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CIII category: #'EJ4-p1'!
CII subclass: #CIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CIV category: #'EJ4-p1'!
CIII subclass: #CIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CV category: #'EJ4-p1'!
CIV subclass: #CV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CVI category: #'EJ4-p1'!
CV subclass: #CVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CVII category: #'EJ4-p1'!
CVI subclass: #CVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CVIII category: #'EJ4-p1'!
CVII subclass: #CVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CIX category: #'EJ4-p1'!
CVIII subclass: #CIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CX category: #'EJ4-p1'!
CIX subclass: #CX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXI category: #'EJ4-p1'!
CX subclass: #CXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXII category: #'EJ4-p1'!
CXI subclass: #CXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXIII category: #'EJ4-p1'!
CXII subclass: #CXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXIV category: #'EJ4-p1'!
CXIII subclass: #CXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXV category: #'EJ4-p1'!
CXIV subclass: #CXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXVI category: #'EJ4-p1'!
CXV subclass: #CXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXVII category: #'EJ4-p1'!
CXVI subclass: #CXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXVIII category: #'EJ4-p1'!
CXVII subclass: #CXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXIX category: #'EJ4-p1'!
CXVIII subclass: #CXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXX category: #'EJ4-p1'!
CXIX subclass: #CXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXI category: #'EJ4-p1'!
CXX subclass: #CXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXII category: #'EJ4-p1'!
CXXI subclass: #CXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXIII category: #'EJ4-p1'!
CXXII subclass: #CXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXIV category: #'EJ4-p1'!
CXXIII subclass: #CXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXV category: #'EJ4-p1'!
CXXIV subclass: #CXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXVI category: #'EJ4-p1'!
CXXV subclass: #CXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXVII category: #'EJ4-p1'!
CXXVI subclass: #CXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXVIII category: #'EJ4-p1'!
CXXVII subclass: #CXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXIX category: #'EJ4-p1'!
CXXVIII subclass: #CXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXX category: #'EJ4-p1'!
CXXIX subclass: #CXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXI category: #'EJ4-p1'!
CXXX subclass: #CXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXII category: #'EJ4-p1'!
CXXXI subclass: #CXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXIII category: #'EJ4-p1'!
CXXXII subclass: #CXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXIV category: #'EJ4-p1'!
CXXXIII subclass: #CXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXV category: #'EJ4-p1'!
CXXXIV subclass: #CXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXVI category: #'EJ4-p1'!
CXXXV subclass: #CXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXVII category: #'EJ4-p1'!
CXXXVI subclass: #CXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXVIII category: #'EJ4-p1'!
CXXXVII subclass: #CXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXXXIX category: #'EJ4-p1'!
CXXXVIII subclass: #CXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXL category: #'EJ4-p1'!
CXXXIX subclass: #CXL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLI category: #'EJ4-p1'!
CXL subclass: #CXLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLII category: #'EJ4-p1'!
CXLI subclass: #CXLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLIII category: #'EJ4-p1'!
CXLII subclass: #CXLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLIV category: #'EJ4-p1'!
CXLIII subclass: #CXLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLV category: #'EJ4-p1'!
CXLIV subclass: #CXLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLVI category: #'EJ4-p1'!
CXLV subclass: #CXLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLVII category: #'EJ4-p1'!
CXLVI subclass: #CXLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLVIII category: #'EJ4-p1'!
CXLVII subclass: #CXLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXLIX category: #'EJ4-p1'!
CXLVIII subclass: #CXLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CL category: #'EJ4-p1'!
CXLIX subclass: #CL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLI category: #'EJ4-p1'!
CL subclass: #CLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLII category: #'EJ4-p1'!
CLI subclass: #CLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLIII category: #'EJ4-p1'!
CLII subclass: #CLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLIV category: #'EJ4-p1'!
CLIII subclass: #CLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLV category: #'EJ4-p1'!
CLIV subclass: #CLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLVI category: #'EJ4-p1'!
CLV subclass: #CLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLVII category: #'EJ4-p1'!
CLVI subclass: #CLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLVIII category: #'EJ4-p1'!
CLVII subclass: #CLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLIX category: #'EJ4-p1'!
CLVIII subclass: #CLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLX category: #'EJ4-p1'!
CLIX subclass: #CLX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXI category: #'EJ4-p1'!
CLX subclass: #CLXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXII category: #'EJ4-p1'!
CLXI subclass: #CLXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXIII category: #'EJ4-p1'!
CLXII subclass: #CLXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXIV category: #'EJ4-p1'!
CLXIII subclass: #CLXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXV category: #'EJ4-p1'!
CLXIV subclass: #CLXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXVI category: #'EJ4-p1'!
CLXV subclass: #CLXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXVII category: #'EJ4-p1'!
CLXVI subclass: #CLXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXVIII category: #'EJ4-p1'!
CLXVII subclass: #CLXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXIX category: #'EJ4-p1'!
CLXVIII subclass: #CLXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXX category: #'EJ4-p1'!
CLXIX subclass: #CLXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXI category: #'EJ4-p1'!
CLXX subclass: #CLXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXII category: #'EJ4-p1'!
CLXXI subclass: #CLXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXIII category: #'EJ4-p1'!
CLXXII subclass: #CLXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXIV category: #'EJ4-p1'!
CLXXIII subclass: #CLXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXV category: #'EJ4-p1'!
CLXXIV subclass: #CLXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXVI category: #'EJ4-p1'!
CLXXV subclass: #CLXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXVII category: #'EJ4-p1'!
CLXXVI subclass: #CLXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXVIII category: #'EJ4-p1'!
CLXXVII subclass: #CLXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXIX category: #'EJ4-p1'!
CLXXVIII subclass: #CLXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXX category: #'EJ4-p1'!
CLXXIX subclass: #CLXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXI category: #'EJ4-p1'!
CLXXX subclass: #CLXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXII category: #'EJ4-p1'!
CLXXXI subclass: #CLXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXIII category: #'EJ4-p1'!
CLXXXII subclass: #CLXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXIV category: #'EJ4-p1'!
CLXXXIII subclass: #CLXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXV category: #'EJ4-p1'!
CLXXXIV subclass: #CLXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXVI category: #'EJ4-p1'!
CLXXXV subclass: #CLXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXVII category: #'EJ4-p1'!
CLXXXVI subclass: #CLXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXVIII category: #'EJ4-p1'!
CLXXXVII subclass: #CLXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CLXXXIX category: #'EJ4-p1'!
CLXXXVIII subclass: #CLXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXC category: #'EJ4-p1'!
CLXXXIX subclass: #CXC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCI category: #'EJ4-p1'!
CXC subclass: #CXCI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCII category: #'EJ4-p1'!
CXCI subclass: #CXCII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCIII category: #'EJ4-p1'!
CXCII subclass: #CXCIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCIV category: #'EJ4-p1'!
CXCIII subclass: #CXCIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCV category: #'EJ4-p1'!
CXCIV subclass: #CXCV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCVI category: #'EJ4-p1'!
CXCV subclass: #CXCVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCVII category: #'EJ4-p1'!
CXCVI subclass: #CXCVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCVIII category: #'EJ4-p1'!
CXCVII subclass: #CXCVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CXCIX category: #'EJ4-p1'!
CXCVIII subclass: #CXCIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CC category: #'EJ4-p1'!
CXCIX subclass: #CC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCI category: #'EJ4-p1'!
CC subclass: #CCI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCII category: #'EJ4-p1'!
CCI subclass: #CCII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCIII category: #'EJ4-p1'!
CCII subclass: #CCIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCIV category: #'EJ4-p1'!
CCIII subclass: #CCIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCV category: #'EJ4-p1'!
CCIV subclass: #CCV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCVI category: #'EJ4-p1'!
CCV subclass: #CCVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCVII category: #'EJ4-p1'!
CCVI subclass: #CCVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCVIII category: #'EJ4-p1'!
CCVII subclass: #CCVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCIX category: #'EJ4-p1'!
CCVIII subclass: #CCIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCX category: #'EJ4-p1'!
CCIX subclass: #CCX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXI category: #'EJ4-p1'!
CCX subclass: #CCXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXII category: #'EJ4-p1'!
CCXI subclass: #CCXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXIII category: #'EJ4-p1'!
CCXII subclass: #CCXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXIV category: #'EJ4-p1'!
CCXIII subclass: #CCXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXV category: #'EJ4-p1'!
CCXIV subclass: #CCXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXVI category: #'EJ4-p1'!
CCXV subclass: #CCXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXVII category: #'EJ4-p1'!
CCXVI subclass: #CCXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXVIII category: #'EJ4-p1'!
CCXVII subclass: #CCXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXIX category: #'EJ4-p1'!
CCXVIII subclass: #CCXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXX category: #'EJ4-p1'!
CCXIX subclass: #CCXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXI category: #'EJ4-p1'!
CCXX subclass: #CCXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXII category: #'EJ4-p1'!
CCXXI subclass: #CCXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXIII category: #'EJ4-p1'!
CCXXII subclass: #CCXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXIV category: #'EJ4-p1'!
CCXXIII subclass: #CCXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXV category: #'EJ4-p1'!
CCXXIV subclass: #CCXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXVI category: #'EJ4-p1'!
CCXXV subclass: #CCXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXVII category: #'EJ4-p1'!
CCXXVI subclass: #CCXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXVIII category: #'EJ4-p1'!
CCXXVII subclass: #CCXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXIX category: #'EJ4-p1'!
CCXXVIII subclass: #CCXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXX category: #'EJ4-p1'!
CCXXIX subclass: #CCXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXI category: #'EJ4-p1'!
CCXXX subclass: #CCXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXII category: #'EJ4-p1'!
CCXXXI subclass: #CCXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXIII category: #'EJ4-p1'!
CCXXXII subclass: #CCXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXIV category: #'EJ4-p1'!
CCXXXIII subclass: #CCXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXV category: #'EJ4-p1'!
CCXXXIV subclass: #CCXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXVI category: #'EJ4-p1'!
CCXXXV subclass: #CCXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXVII category: #'EJ4-p1'!
CCXXXVI subclass: #CCXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXVIII category: #'EJ4-p1'!
CCXXXVII subclass: #CCXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXXXIX category: #'EJ4-p1'!
CCXXXVIII subclass: #CCXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXL category: #'EJ4-p1'!
CCXXXIX subclass: #CCXL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLI category: #'EJ4-p1'!
CCXL subclass: #CCXLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLII category: #'EJ4-p1'!
CCXLI subclass: #CCXLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLIII category: #'EJ4-p1'!
CCXLII subclass: #CCXLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLIV category: #'EJ4-p1'!
CCXLIII subclass: #CCXLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLV category: #'EJ4-p1'!
CCXLIV subclass: #CCXLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLVI category: #'EJ4-p1'!
CCXLV subclass: #CCXLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLVII category: #'EJ4-p1'!
CCXLVI subclass: #CCXLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLVIII category: #'EJ4-p1'!
CCXLVII subclass: #CCXLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXLIX category: #'EJ4-p1'!
CCXLVIII subclass: #CCXLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCL category: #'EJ4-p1'!
CCXLIX subclass: #CCL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLI category: #'EJ4-p1'!
CCL subclass: #CCLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLII category: #'EJ4-p1'!
CCLI subclass: #CCLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLIII category: #'EJ4-p1'!
CCLII subclass: #CCLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLIV category: #'EJ4-p1'!
CCLIII subclass: #CCLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLV category: #'EJ4-p1'!
CCLIV subclass: #CCLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLVI category: #'EJ4-p1'!
CCLV subclass: #CCLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLVII category: #'EJ4-p1'!
CCLVI subclass: #CCLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLVIII category: #'EJ4-p1'!
CCLVII subclass: #CCLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLIX category: #'EJ4-p1'!
CCLVIII subclass: #CCLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLX category: #'EJ4-p1'!
CCLIX subclass: #CCLX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXI category: #'EJ4-p1'!
CCLX subclass: #CCLXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXII category: #'EJ4-p1'!
CCLXI subclass: #CCLXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXIII category: #'EJ4-p1'!
CCLXII subclass: #CCLXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXIV category: #'EJ4-p1'!
CCLXIII subclass: #CCLXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXV category: #'EJ4-p1'!
CCLXIV subclass: #CCLXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXVI category: #'EJ4-p1'!
CCLXV subclass: #CCLXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXVII category: #'EJ4-p1'!
CCLXVI subclass: #CCLXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXVIII category: #'EJ4-p1'!
CCLXVII subclass: #CCLXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXIX category: #'EJ4-p1'!
CCLXVIII subclass: #CCLXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXX category: #'EJ4-p1'!
CCLXIX subclass: #CCLXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXI category: #'EJ4-p1'!
CCLXX subclass: #CCLXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXII category: #'EJ4-p1'!
CCLXXI subclass: #CCLXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXIII category: #'EJ4-p1'!
CCLXXII subclass: #CCLXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXIV category: #'EJ4-p1'!
CCLXXIII subclass: #CCLXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXV category: #'EJ4-p1'!
CCLXXIV subclass: #CCLXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXVI category: #'EJ4-p1'!
CCLXXV subclass: #CCLXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXVII category: #'EJ4-p1'!
CCLXXVI subclass: #CCLXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXVIII category: #'EJ4-p1'!
CCLXXVII subclass: #CCLXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXIX category: #'EJ4-p1'!
CCLXXVIII subclass: #CCLXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXX category: #'EJ4-p1'!
CCLXXIX subclass: #CCLXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXI category: #'EJ4-p1'!
CCLXXX subclass: #CCLXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXII category: #'EJ4-p1'!
CCLXXXI subclass: #CCLXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXIII category: #'EJ4-p1'!
CCLXXXII subclass: #CCLXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXIV category: #'EJ4-p1'!
CCLXXXIII subclass: #CCLXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXV category: #'EJ4-p1'!
CCLXXXIV subclass: #CCLXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXVI category: #'EJ4-p1'!
CCLXXXV subclass: #CCLXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXVII category: #'EJ4-p1'!
CCLXXXVI subclass: #CCLXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXVIII category: #'EJ4-p1'!
CCLXXXVII subclass: #CCLXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCLXXXIX category: #'EJ4-p1'!
CCLXXXVIII subclass: #CCLXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXC category: #'EJ4-p1'!
CCLXXXIX subclass: #CCXC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCI category: #'EJ4-p1'!
CCXC subclass: #CCXCI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCII category: #'EJ4-p1'!
CCXCI subclass: #CCXCII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCIII category: #'EJ4-p1'!
CCXCII subclass: #CCXCIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCIV category: #'EJ4-p1'!
CCXCIII subclass: #CCXCIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCV category: #'EJ4-p1'!
CCXCIV subclass: #CCXCV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCVI category: #'EJ4-p1'!
CCXCV subclass: #CCXCVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCVII category: #'EJ4-p1'!
CCXCVI subclass: #CCXCVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCVIII category: #'EJ4-p1'!
CCXCVII subclass: #CCXCVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCXCIX category: #'EJ4-p1'!
CCXCVIII subclass: #CCXCIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCC category: #'EJ4-p1'!
CCXCIX subclass: #CCC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCI category: #'EJ4-p1'!
CCC subclass: #CCCI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCII category: #'EJ4-p1'!
CCCI subclass: #CCCII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCIII category: #'EJ4-p1'!
CCCII subclass: #CCCIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCIV category: #'EJ4-p1'!
CCCIII subclass: #CCCIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCV category: #'EJ4-p1'!
CCCIV subclass: #CCCV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCVI category: #'EJ4-p1'!
CCCV subclass: #CCCVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCVII category: #'EJ4-p1'!
CCCVI subclass: #CCCVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCVIII category: #'EJ4-p1'!
CCCVII subclass: #CCCVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCIX category: #'EJ4-p1'!
CCCVIII subclass: #CCCIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCX category: #'EJ4-p1'!
CCCIX subclass: #CCCX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXI category: #'EJ4-p1'!
CCCX subclass: #CCCXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXII category: #'EJ4-p1'!
CCCXI subclass: #CCCXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXIII category: #'EJ4-p1'!
CCCXII subclass: #CCCXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXIV category: #'EJ4-p1'!
CCCXIII subclass: #CCCXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXV category: #'EJ4-p1'!
CCCXIV subclass: #CCCXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXVI category: #'EJ4-p1'!
CCCXV subclass: #CCCXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXVII category: #'EJ4-p1'!
CCCXVI subclass: #CCCXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXVIII category: #'EJ4-p1'!
CCCXVII subclass: #CCCXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXIX category: #'EJ4-p1'!
CCCXVIII subclass: #CCCXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXX category: #'EJ4-p1'!
CCCXIX subclass: #CCCXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXI category: #'EJ4-p1'!
CCCXX subclass: #CCCXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXII category: #'EJ4-p1'!
CCCXXI subclass: #CCCXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXIII category: #'EJ4-p1'!
CCCXXII subclass: #CCCXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXIV category: #'EJ4-p1'!
CCCXXIII subclass: #CCCXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXV category: #'EJ4-p1'!
CCCXXIV subclass: #CCCXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXVI category: #'EJ4-p1'!
CCCXXV subclass: #CCCXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXVII category: #'EJ4-p1'!
CCCXXVI subclass: #CCCXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXVIII category: #'EJ4-p1'!
CCCXXVII subclass: #CCCXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXIX category: #'EJ4-p1'!
CCCXXVIII subclass: #CCCXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXX category: #'EJ4-p1'!
CCCXXIX subclass: #CCCXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXI category: #'EJ4-p1'!
CCCXXX subclass: #CCCXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXII category: #'EJ4-p1'!
CCCXXXI subclass: #CCCXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXIII category: #'EJ4-p1'!
CCCXXXII subclass: #CCCXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXIV category: #'EJ4-p1'!
CCCXXXIII subclass: #CCCXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXV category: #'EJ4-p1'!
CCCXXXIV subclass: #CCCXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXVI category: #'EJ4-p1'!
CCCXXXV subclass: #CCCXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXVII category: #'EJ4-p1'!
CCCXXXVI subclass: #CCCXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXVIII category: #'EJ4-p1'!
CCCXXXVII subclass: #CCCXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXXXIX category: #'EJ4-p1'!
CCCXXXVIII subclass: #CCCXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXL category: #'EJ4-p1'!
CCCXXXIX subclass: #CCCXL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLI category: #'EJ4-p1'!
CCCXL subclass: #CCCXLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLII category: #'EJ4-p1'!
CCCXLI subclass: #CCCXLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLIII category: #'EJ4-p1'!
CCCXLII subclass: #CCCXLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLIV category: #'EJ4-p1'!
CCCXLIII subclass: #CCCXLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLV category: #'EJ4-p1'!
CCCXLIV subclass: #CCCXLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLVI category: #'EJ4-p1'!
CCCXLV subclass: #CCCXLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLVII category: #'EJ4-p1'!
CCCXLVI subclass: #CCCXLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLVIII category: #'EJ4-p1'!
CCCXLVII subclass: #CCCXLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXLIX category: #'EJ4-p1'!
CCCXLVIII subclass: #CCCXLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCL category: #'EJ4-p1'!
CCCXLIX subclass: #CCCL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLI category: #'EJ4-p1'!
CCCL subclass: #CCCLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLII category: #'EJ4-p1'!
CCCLI subclass: #CCCLII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLIII category: #'EJ4-p1'!
CCCLII subclass: #CCCLIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLIV category: #'EJ4-p1'!
CCCLIII subclass: #CCCLIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLV category: #'EJ4-p1'!
CCCLIV subclass: #CCCLV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLVI category: #'EJ4-p1'!
CCCLV subclass: #CCCLVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLVII category: #'EJ4-p1'!
CCCLVI subclass: #CCCLVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLVIII category: #'EJ4-p1'!
CCCLVII subclass: #CCCLVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLIX category: #'EJ4-p1'!
CCCLVIII subclass: #CCCLIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLX category: #'EJ4-p1'!
CCCLIX subclass: #CCCLX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXI category: #'EJ4-p1'!
CCCLX subclass: #CCCLXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXII category: #'EJ4-p1'!
CCCLXI subclass: #CCCLXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXIII category: #'EJ4-p1'!
CCCLXII subclass: #CCCLXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXIV category: #'EJ4-p1'!
CCCLXIII subclass: #CCCLXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXV category: #'EJ4-p1'!
CCCLXIV subclass: #CCCLXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXVI category: #'EJ4-p1'!
CCCLXV subclass: #CCCLXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXVII category: #'EJ4-p1'!
CCCLXVI subclass: #CCCLXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXVIII category: #'EJ4-p1'!
CCCLXVII subclass: #CCCLXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXIX category: #'EJ4-p1'!
CCCLXVIII subclass: #CCCLXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXX category: #'EJ4-p1'!
CCCLXIX subclass: #CCCLXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXI category: #'EJ4-p1'!
CCCLXX subclass: #CCCLXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXII category: #'EJ4-p1'!
CCCLXXI subclass: #CCCLXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXIII category: #'EJ4-p1'!
CCCLXXII subclass: #CCCLXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXIV category: #'EJ4-p1'!
CCCLXXIII subclass: #CCCLXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXV category: #'EJ4-p1'!
CCCLXXIV subclass: #CCCLXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXVI category: #'EJ4-p1'!
CCCLXXV subclass: #CCCLXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXVII category: #'EJ4-p1'!
CCCLXXVI subclass: #CCCLXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXVIII category: #'EJ4-p1'!
CCCLXXVII subclass: #CCCLXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXIX category: #'EJ4-p1'!
CCCLXXVIII subclass: #CCCLXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXX category: #'EJ4-p1'!
CCCLXXIX subclass: #CCCLXXX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXI category: #'EJ4-p1'!
CCCLXXX subclass: #CCCLXXXI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXII category: #'EJ4-p1'!
CCCLXXXI subclass: #CCCLXXXII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXIII category: #'EJ4-p1'!
CCCLXXXII subclass: #CCCLXXXIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXIV category: #'EJ4-p1'!
CCCLXXXIII subclass: #CCCLXXXIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXV category: #'EJ4-p1'!
CCCLXXXIV subclass: #CCCLXXXV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXVI category: #'EJ4-p1'!
CCCLXXXV subclass: #CCCLXXXVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXVII category: #'EJ4-p1'!
CCCLXXXVI subclass: #CCCLXXXVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXVIII category: #'EJ4-p1'!
CCCLXXXVII subclass: #CCCLXXXVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCLXXXIX category: #'EJ4-p1'!
CCCLXXXVIII subclass: #CCCLXXXIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXC category: #'EJ4-p1'!
CCCLXXXIX subclass: #CCCXC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCI category: #'EJ4-p1'!
CCCXC subclass: #CCCXCI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCII category: #'EJ4-p1'!
CCCXCI subclass: #CCCXCII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCIII category: #'EJ4-p1'!
CCCXCII subclass: #CCCXCIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCIV category: #'EJ4-p1'!
CCCXCIII subclass: #CCCXCIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCV category: #'EJ4-p1'!
CCCXCIV subclass: #CCCXCV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCVI category: #'EJ4-p1'!
CCCXCV subclass: #CCCXCVI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCVII category: #'EJ4-p1'!
CCCXCVI subclass: #CCCXCVII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCVIII category: #'EJ4-p1'!
CCCXCVII subclass: #CCCXCVIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #CCCXCIX category: #'EJ4-p1'!
CCCXCVIII subclass: #CCCXCIX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!


!classDefinition: #TestsDeNombre category: #'EJ4-p1'!
DenotativeObject subclass: #TestsDeNombre
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ4-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TestsDeNombre class' category: #'EJ4-p1'!
TestsDeNombre class
	instanceVariableNames: ''!

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:21:24'!
test01TheNameOfFourIsIV

|three|.

three := II + I.
	Assert that: (three next name asString) isEqualTo: 'IV'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:08:46'!
test02TheNameOfFiveIsV

|five|.

five := II + II + I.
	Assert that: (five name asString) isEqualTo: 'V'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:26:38'!
test03TheNameOfNineIsIX

|nine|.

nine := V + IV.
	Assert that: (nine name asString) isEqualTo: 'IX'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:27:16'!
test04TheNameOfTenIsX

|ten|.

ten := IX + I.
	Assert that: (ten name asString) isEqualTo: 'X'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:29:12'!
test05TheNameOfFifteenIsXV

|fifteen|.

fifteen := X+ V.
	Assert that: (fifteen name asString) isEqualTo: 'XV'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:30:11'!
test06TheNameOfNineteenIsXIX

|nineteen|.

nineteen := X+ V + IV.
	Assert that: (nineteen name asString) isEqualTo: 'XIX'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:31:01'!
test07TheNameOfTwentyIsXX

|twenty|.

twenty := X+ V + IV + I.
	Assert that: (twenty name asString) isEqualTo: 'XX'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:34:46'!
test08TheNameOfTwentyOneIsXXI

|twentyOne|.

twentyOne := X+ V + IV + II.
	Assert that: (twentyOne name asString) isEqualTo: 'XXI'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:38:45'!
test09TheNameOfFortyIsXL

|forty|.

forty := X + X + X + X.
	Assert that: (forty name asString) isEqualTo: 'XL'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:39:15'!
test09TheNameOfFortyNineIsXLIX

|fortyNine|.

fortyNine := X + X + X + X + IX.
	Assert that: (fortyNine name asString) isEqualTo: 'XLIX'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:41:33'!
test10TheNameOfFifthyIsL

|fifthy|.

fifthy := X + X + X + X + X.
	Assert that: (fifthy name asString) isEqualTo: 'L'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:42:42'!
test11TheNameOfSixtyIsLX

|sixty|.

sixty := L + X.
	Assert that: (sixty name asString) isEqualTo: 'LX'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:45:14'!
test12TheNameOfNinetyIsLX

|ninety|.

ninety := L + X + X + X + X.
	Assert that: (ninety name asString) isEqualTo: 'XC'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:48:48'!
test13TheNameOfOneHundredIsC

|oneHundred|.

oneHundred := XC + X.
	Assert that: (oneHundred name asString) isEqualTo: 'C'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:50:21'!
test14TheNameOfThreeHundredIsCCC

|threeHundred|.

threeHundred := C + C + C.
	Assert that: (threeHundred name asString) isEqualTo: 'CCC'
! !

!TestsDeNombre class methodsFor: 'tests' stamp: 'VS 9/2/2025 17:52:10'!
test15TheNameOfFourHundredIsCD

|fourHundred|.

fourHundred := C + C + C + C.
	Assert that: (fourHundred name asString) isEqualTo: 'CD'
! !
