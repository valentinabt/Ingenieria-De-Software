!classDefinition: #State category: #'3.Replace-if-Type+State'!
Object subclass: #State
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '3.Replace-if-Type+State'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'State class' category: #'3.Replace-if-Type+State'!
State class
	instanceVariableNames: 'vehicle'!

!State class methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:30:12'!
on: aVehicle

vehicle := aVehicle .! !

!State class methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:33:05'!
tryToAccelerateOn

self subclassResponsibility ! !


!classDefinition: #Off category: #'3.Replace-if-Type+State'!
State subclass: #Off
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '3.Replace-if-Type+State'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Off class' category: #'3.Replace-if-Type+State'!
Off class
	instanceVariableNames: ''!

!Off class methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:33:22'!
tryToAccelerateOn

vehicle accelerateWhenTurnedOff ! !


!classDefinition: #On category: #'3.Replace-if-Type+State'!
State subclass: #On
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '3.Replace-if-Type+State'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'On class' category: #'3.Replace-if-Type+State'!
On class
	instanceVariableNames: ''!

!On class methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:33:37'!
tryToAccelerateOn

vehicle accelerateWhenTurnedOn ! !


!classDefinition: #Vehicle category: #'3.Replace-if-Type+State'!
Object subclass: #Vehicle
	instanceVariableNames: 'state speed altitude'
	classVariableNames: ''
	poolDictionaries: ''
	category: '3.Replace-if-Type+State'!

!Vehicle methodsFor: 'initialization' stamp: 'VS 9/16/2025 20:40:25'!
initialize
	
	
	self turnOff.
	speed := 0 * kilometer / hour.
	altitude := 0 * meter! !


!Vehicle methodsFor: 'move' stamp: 'VS 9/16/2025 20:34:29'!
accelerate

	state tryToAccelerateOn.
! !

!Vehicle methodsFor: 'move' stamp: 'VS 9/16/2025 20:34:21'!
accelerateWhenTurnedOff

	self error: self canNotAccelerateErrorMessage! !

!Vehicle methodsFor: 'move' stamp: 'VS 9/16/2025 20:40:44'!
accelerateWhenTurnedOn

	self subclassResponsibility ! !


!Vehicle methodsFor: 'on/off' stamp: 'VS 9/16/2025 20:31:45'!
turnOff

	state := Off on: self.! !

!Vehicle methodsFor: 'on/off' stamp: 'VS 9/16/2025 20:31:54'!
turnOn

	state := On on: self.! !


!Vehicle methodsFor: 'error messages' stamp: 'VS 9/16/2025 20:40:58'!
canNotAccelerateErrorMessage
self subclassResponsibility ! !


!classDefinition: #Helicopter category: #'3.Replace-if-Type+State'!
Vehicle subclass: #Helicopter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '3.Replace-if-Type+State'!

!Helicopter methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:39:42'!
accelerateWhenTurnedOn
"speed := speed + (10 * kilometer / hour).
altitude := altitude + (5 * meter)"
! !

!Helicopter methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:41:17'!
canNotAccelerateErrorMessage


^'Can not fly when turned off'! !


!classDefinition: #Motorcycle category: #'3.Replace-if-Type+State'!
Vehicle subclass: #Motorcycle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '3.Replace-if-Type+State'!

!Motorcycle methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:39:56'!
accelerateWhenTurnedOn

		
	"speed := speed + (20 * kilometer / hour)"! !

!Motorcycle methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:41:34'!
canNotAccelerateErrorMessage


	^'Can not run when turned off'! !
