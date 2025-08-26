!classDefinition: #Falso category: #'EJ3-p1'!
DenotativeObject subclass: #Falso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ3-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Falso class' category: #'EJ3-p1'!
Falso class
	instanceVariableNames: ''!

!Falso class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:30:36'!
no
	^Verdadero! !

!Falso class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:34:52'!
o: unBooleano 
	^unBooleano ! !

!Falso class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:42:29'!
siFalso: unClosure 
	
	 ^ unClosure value ! !

!Falso class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:41:19'!
siVerdadero: unClosure 
	
	! !

!Falso class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:32:08'!
y: unBooleano
	
	^Falso ! !


!classDefinition: #TestDeBooleanos category: #'EJ3-p1'!
DenotativeObject subclass: #TestDeBooleanos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ3-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TestDeBooleanos class' category: #'EJ3-p1'!
TestDeBooleanos class
	instanceVariableNames: ''!

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:29:23'!
test01VerdaderoNegadoEsFalso
	
	Assert that: Verdadero no isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:30:18'!
test02FalsoNegadoEsVerdadero
	
	Assert that: Falso no isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:31:17'!
test03FalsoYFalsoEsFalso
	
	Assert that: (Falso y: Falso) isEqualTo: Falso ! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:31:50'!
test04FalsoYVerdaderoEsFalso
	
	Assert that: (Falso y: Verdadero) isEqualTo: Falso ! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:32:36'!
test05VerdaderoYVerdaderoEsVerdadero
	
	Assert that: (Verdadero y: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:33:12'!
test06VerdaderoYFalsoEsFalso
	
	Assert that: (Verdadero y: Falso) isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:34:01'!
test07FalsoOFalsoEsFalso
	
	Assert that: (Falso o: Falso) isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:34:37'!
test08FalsoOVerdaderoEsVerdadero
	
	Assert that: (Falso o: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:35:12'!
test09VerdaderoOVerdaderoEsVerdadero
	
	Assert that: (Verdadero o: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:35:47'!
test10VerdaderoOFalsoEsVerdadero
	
	Assert that: (Verdadero o: Falso) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:37:58'!
test11siVerdaderoConVerdaderoRealizaAcción
	
	|unClosure|.
	unClosure := [^1].
	Assert that: (Verdadero siVerdadero: unClosure) isEqualTo: unClosure value ! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:41:02'!
test12siFalsoConVerdaderoNoHaceNada
	
	|unClosure|.
	unClosure := [^1].
	Assert that: (Verdadero siFalso: unClosure) isEqualTo: Verdadero . ! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:40:45'!
test13siVerdaderoConFalsoNoHaceNada
	
	|unClosure|.
	unClosure := [^1].
	Assert that: (Falso siVerdadero: unClosure) isEqualTo: Falso . ! !

!TestDeBooleanos class methodsFor: 'tests' stamp: 'VS 8/26/2025 16:41:50'!
test14siFalsoConFalsoRealizaAccion
	
	|unClosure|.
	unClosure := [^1].
	Assert that: (Falso siFalso: unClosure) isEqualTo: unClosure value  . ! !


!classDefinition: #Verdadero category: #'EJ3-p1'!
DenotativeObject subclass: #Verdadero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EJ3-p1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Verdadero class' category: #'EJ3-p1'!
Verdadero class
	instanceVariableNames: ''!

!Verdadero class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:29:54'!
no
	^Falso! !

!Verdadero class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:35:56'!
o: unBooleano
	^Verdadero ! !

!Verdadero class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:39:14'!
siFalso: unClosure 
	
	! !

!Verdadero class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:38:16'!
siVerdadero: unClosure 
	
	^unClosure value ! !

!Verdadero class methodsFor: 'operaciones' stamp: 'VS 8/26/2025 16:33:25'!
y: unBool
	^unBool! !
