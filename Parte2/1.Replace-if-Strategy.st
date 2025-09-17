!classDefinition: #Automobile category: #'1.Replace-if-Strategy'!
Object subclass: #Automobile
	instanceVariableNames: 'speed'
	classVariableNames: ''
	poolDictionaries: ''
	category: '1.Replace-if-Strategy'!

!Automobile methodsFor: 'initialization' stamp: 'VS 9/16/2025 19:51:12'!
initialize
	speed := 0 * kilometer / hour! !


!classDefinition: #AutomobileWithElectricEngine category: #'1.Replace-if-Strategy'!
Automobile subclass: #AutomobileWithElectricEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '1.Replace-if-Strategy'!

!AutomobileWithElectricEngine methodsFor: 'move' stamp: 'VS 9/16/2025 19:50:25'!
accelerate

 speed := speed + ((speed + (5 * kilometer / hour))* 2) .
	! !


!classDefinition: #AutomobileWithGasolineEngine category: #'1.Replace-if-Strategy'!
Automobile subclass: #AutomobileWithGasolineEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '1.Replace-if-Strategy'!

!AutomobileWithGasolineEngine methodsFor: 'move' stamp: 'VS 9/16/2025 19:50:38'!
accelerate

 speed := speed + (10 * kilometer / hour) ! !


!classDefinition: #AutomobileWithJetFueledEngine category: #'1.Replace-if-Strategy'!
Automobile subclass: #AutomobileWithJetFueledEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '1.Replace-if-Strategy'!

!AutomobileWithJetFueledEngine methodsFor: 'move' stamp: 'VS 9/16/2025 19:50:50'!
accelerate

 speed := speed + (((speed amount + 1) ^ 2) * kilometer / hour) ! !
