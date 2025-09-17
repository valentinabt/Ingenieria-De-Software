!classDefinition: #Vehicle category: #'0.Replace-if-Type'!
Object subclass: #Vehicle
	instanceVariableNames: 'speed altitude'
	classVariableNames: ''
	poolDictionaries: ''
	category: '0.Replace-if-Type'!

!Vehicle methodsFor: 'initialization' stamp: 'VS 9/16/2025 19:43:35'!
initialize

	
	speed := 0 * kilometer / hour.
	altitude := 0 * meter! !


!classDefinition: #Helicopter category: #'0.Replace-if-Type'!
Vehicle subclass: #Helicopter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '0.Replace-if-Type'!

!Helicopter methodsFor: 'move' stamp: 'VS 9/16/2025 19:42:13'!
accelerate

speed := speed + (10 * kilometer / hour).
altitude := altitude + (5 * meter)! !


!classDefinition: #Motorcycle category: #'0.Replace-if-Type'!
Vehicle subclass: #Motorcycle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '0.Replace-if-Type'!

!Motorcycle methodsFor: 'move' stamp: 'VS 9/16/2025 19:42:31'!
accelerate

speed := speed + (20 * kilometer / hour)! !
