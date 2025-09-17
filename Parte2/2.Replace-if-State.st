!classDefinition: #Automobile category: #'2.Replace-if-State'!
Object subclass: #Automobile
	instanceVariableNames: 'powerStatus speed'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2.Replace-if-State'!

!Automobile methodsFor: 'initialization' stamp: 'VS 9/16/2025 20:25:22'!
initialize

       self turnOff.
	speed := 0 * kilometer / hour! !


!Automobile methodsFor: 'move' stamp: 'VS 9/16/2025 20:21:33'!
accelerate

	powerStatus tryToAccelerateAutomobileOn! !

!Automobile methodsFor: 'move' stamp: 'VS 9/16/2025 20:21:01'!
accelerateWhenTurnedOff


self error: 'Can not accelerate when turned off'! !

!Automobile methodsFor: 'move' stamp: 'VS 9/16/2025 20:21:48'!
accelerateWhenTurnedOn


speed := speed + (10 * kilometer / hour)! !


!Automobile methodsFor: 'turning on/off' stamp: 'VS 9/16/2025 20:19:02'!
turnOff

powerStatus := Off on: self.! !

!Automobile methodsFor: 'turning on/off' stamp: 'VS 9/16/2025 20:19:02'!
turnOn


powerStatus := On on: self.! !


!classDefinition: #State category: #'2.Replace-if-State'!
Object subclass: #State
	instanceVariableNames: 'automobile'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2.Replace-if-State'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'State class' category: #'2.Replace-if-State'!
State class
	instanceVariableNames: 'automobile'!

!State class methodsFor: 'initialization' stamp: 'VS 9/16/2025 20:13:19'!
on: anAutomobile

automobile := anAutomobile .! !


!State class methodsFor: 'XXXXX' stamp: 'VS 9/16/2025 20:22:07'!
tryToAccelerateAutomobileOn

self subclassResponsibility ! !


!classDefinition: #Off category: #'2.Replace-if-State'!
State subclass: #Off
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2.Replace-if-State'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Off class' category: #'2.Replace-if-State'!
Off class
	instanceVariableNames: ''!

!Off class methodsFor: 'XXXXX' stamp: 'VS 9/16/2025 20:22:22'!
tryToAccelerateAutomobileOn

automobile accelerateWhenTurnedOff ! !


!classDefinition: #On category: #'2.Replace-if-State'!
State subclass: #On
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2.Replace-if-State'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'On class' category: #'2.Replace-if-State'!
On class
	instanceVariableNames: ''!

!On class methodsFor: 'XXXXX' stamp: 'VS 9/16/2025 20:22:41'!
tryToAccelerateAutomobileOn

automobile accelerateWhenTurnedOn ! !
