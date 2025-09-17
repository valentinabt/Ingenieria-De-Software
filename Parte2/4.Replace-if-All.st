!classDefinition: #VehicleTests category: #'4.Replace-if-All'!
TestCase subclass: #VehicleTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:25:03'!
test01LandVehicleCannotAccelerateWhileTurnedOff

	| landVehicle |
	
	landVehicle := Vehicle electricMotorcycle.
	
	self should: [ landVehicle accelerate ] 
	raise: Error 
	withExceptionDo: [ :error | error messageText = 'Can not run when turned off'.
		self assert: (landVehicle speedAt: (0 * kilometer / hour)) ]
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:27:17'!
test02AirVehicleCannotAccelerateWhileTurnedOff

	| airVehicle |
	
	airVehicle := Vehicle helicopter.
	
	self should: [ airVehicle accelerate ] 
	raise: Error 
	withExceptionDo: [ :error | error messageText = 'Can not fly when turned off'.
		self assert: (airVehicle speedAt: (0 * kilometer / hour)).
		self assert: (airVehicle altitudeAt: (0 * meter)) ]
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:52:20'!
test03ElectricVehicleAccelerateAsIntended

	| electricVehicle |
	
	electricVehicle := Vehicle electricMotorcycle.
	
	electricVehicle turnOn.
	self assert: (electricVehicle speedAt: 0 * kilometer / hour).
	
	electricVehicle accelerate.
	self assert: (electricVehicle speedAt: 10 * kilometer / hour).
	
	electricVehicle accelerate.
	self assert: (electricVehicle speedAt: 40 * kilometer / hour)
	
	
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:52:16'!
test04GasolineVehicleAccelerateAsIntended

	| gasolineVehicle |
	
	gasolineVehicle := Vehicle gasolineMotorcycle.
	
	gasolineVehicle turnOn.
	self assert: (gasolineVehicle speedAt: 0 * kilometer / hour).
	
	gasolineVehicle accelerate.
	self assert: (gasolineVehicle speedAt: 10 * kilometer / hour).
	
	gasolineVehicle accelerate.
	self assert: (gasolineVehicle speedAt: 20 * kilometer / hour)
	
	
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:52:11'!
test05JetFueledVehicleAccelerateAsIntended

	| jetFueledVehicle |
	
	jetFueledVehicle := Vehicle helicopter.
	
	jetFueledVehicle turnOn.
	self assert: (jetFueledVehicle speedAt: 0 * kilometer / hour).
	
	jetFueledVehicle accelerate.
	self assert: (jetFueledVehicle speedAt: 1 * kilometer / hour).
	
	jetFueledVehicle accelerate.
	self assert: (jetFueledVehicle speedAt: 5 * kilometer / hour).
	
	jetFueledVehicle accelerate.
	self assert: (jetFueledVehicle speedAt: 41 * kilometer / hour)
	
	
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:47:14'!
test06AirVehicleGoesUpAsItAcceleratesAsExpected

	| airVehicle |
	
	airVehicle := Vehicle helicopter.
	
	airVehicle turnOn.
	self assert: (airVehicle altitudeAt: 0 * meter).
	
	airVehicle accelerate.
	self assert: (airVehicle altitudeAt: 5 * meter).
	
	airVehicle accelerate.
	self assert: (airVehicle altitudeAt: 10 * meter)
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:52:05'!
test07SpeedLimiterForCityLimitsSpeedAt70Kmh

	| cityVehicle |
	
	cityVehicle := Vehicle electricMotorcycle.
	
	cityVehicle turnOn.
	self assert: (cityVehicle speedAt: 0 * kilometer / hour).
	
	20 timesRepeat: [ cityVehicle accelerate ].
	
	self assert: (cityVehicle speedAt: 70 * kilometer / hour)
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:53:50'!
test08SpeedLimiterForOpenRoadLimitsSpeedAt130Kmh

	| openRoadVehicle |
	
	openRoadVehicle := Vehicle gasolineMotorcycle.
	
	openRoadVehicle turnOn.
	self assert: (openRoadVehicle speedAt: 0 * kilometer / hour).
	
	20 timesRepeat: [ openRoadVehicle accelerate ].
	
	self assert: (openRoadVehicle speedAt: 130 * kilometer / hour)
	
	
	! !

!VehicleTests methodsFor: 'testing' stamp: 'NR 9/7/2024 18:55:32'!
test09SpeedLimiterForAirTrafficLimitsSpeedAt500Kmh

	| vehicleInAir |
	
	vehicleInAir := Vehicle helicopter.
	
	vehicleInAir turnOn.
	self assert: (vehicleInAir speedAt: 0 * kilometer / hour).
	
	20 timesRepeat: [ vehicleInAir accelerate ].
	
	self assert: (vehicleInAir speedAt: 500 * kilometer / hour)
	
	
	! !


!classDefinition: #Engine category: #'4.Replace-if-All'!
Object subclass: #Engine
	instanceVariableNames: 'vehicle'
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!Engine methodsFor: 'moving a vehicle' stamp: 'VS 9/17/2025 13:39:23'!
accelerateFrom: aSpeed

self subclassResponsibility ! !


!Engine methodsFor: 'initialization' stamp: 'VS 9/16/2025 21:24:01'!
of: aVehicle

vehicle := aVehicle.! !


!classDefinition: #ElectricEngine category: #'4.Replace-if-All'!
Engine subclass: #ElectricEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!ElectricEngine methodsFor: 'moving a vehicle' stamp: 'VS 9/17/2025 13:39:23'!
accelerateFrom: aSpeed


^ (aSpeed + (5 * kilometer / hour)) * 2 ! !


!classDefinition: #GasolineEngine category: #'4.Replace-if-All'!
Engine subclass: #GasolineEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!GasolineEngine methodsFor: 'moving a vehicle' stamp: 'VS 9/17/2025 13:39:23'!
accelerateFrom: aSpeed


^10 * kilometer / hour ! !


!classDefinition: #JetFueledEngine category: #'4.Replace-if-All'!
Engine subclass: #JetFueledEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!JetFueledEngine methodsFor: 'moving a vehicle' stamp: 'VS 9/17/2025 13:39:23'!
accelerateFrom: aSpeed

^((aSpeed amount + 1) ^ 2) * kilometer / hour ! !


!classDefinition: #SpeedLimiter category: #'4.Replace-if-All'!
Object subclass: #SpeedLimiter
	instanceVariableNames: 'surroundingSpeedLimits'
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!SpeedLimiter methodsFor: 'initialization' stamp: 'VS 9/17/2025 13:41:29'!
initialize


surroundingSpeedLimits := Dictionary new.
surroundingSpeedLimits at: #city put: (70 * kilometer / hour) .
surroundingSpeedLimits at: #openRoad put: (130 * kilometer / hour).
surroundingSpeedLimits at: #skies put: (500 * kilometer / hour) .! !

!SpeedLimiter methodsFor: 'initialization' stamp: 'VS 9/17/2025 13:41:29'!
speedLimitIn: aSurrounding

^surroundingSpeedLimits at: aSurrounding ! !


!classDefinition: #Status category: #'4.Replace-if-All'!
Object subclass: #Status
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Status class' category: #'4.Replace-if-All'!
Status class
	instanceVariableNames: 'vehicle'!

!Status class methodsFor: 'as yet unclassified' stamp: 'VS 9/17/2025 13:43:49'!
handleAccelerate

self subclassResponsibility ! !

!Status class methodsFor: 'as yet unclassified' stamp: 'VS 9/16/2025 20:46:54'!
on: aVehicle

vehicle := aVehicle ! !


!classDefinition: #Off category: #'4.Replace-if-All'!
Status subclass: #Off
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Off class' category: #'4.Replace-if-All'!
Off class
	instanceVariableNames: ''!

!Off class methodsFor: 'as yet unclassified' stamp: 'VS 9/17/2025 13:43:49'!
handleAccelerate

vehicle accelerateWhenTurnedOff ! !


!classDefinition: #On category: #'4.Replace-if-All'!
Status subclass: #On
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'On class' category: #'4.Replace-if-All'!
On class
	instanceVariableNames: ''!

!On class methodsFor: 'as yet unclassified' stamp: 'VS 9/17/2025 13:43:49'!
handleAccelerate

vehicle accelerateWhenTurnedOn ! !


!classDefinition: #Vehicle category: #'4.Replace-if-All'!
Object subclass: #Vehicle
	instanceVariableNames: 'state speed altitude engine where'
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!Vehicle methodsFor: 'initialization' stamp: 'VS 9/17/2025 13:45:57'!
initializeWithEngine: anEngine andSurroundings: surroundings

	self turnOff.
	anEngine of: self.
	engine := anEngine.
	where := surroundings.
	altitude := 0 * meter! !


!Vehicle methodsFor: 'move' stamp: 'VS 9/17/2025 13:43:49'!
accelerate

	state handleAccelerate.! !

!Vehicle methodsFor: 'move' stamp: 'VS 9/16/2025 20:55:53'!
accelerateWhenTurnedOff

self error: self canNotAccelerateErrorMessage! !

!Vehicle methodsFor: 'move' stamp: 'VS 9/17/2025 13:39:23'!
accelerateWhenTurnedOn

| acceleration |
	
acceleration := engine accelerateFrom: speed.
 speed := speed + acceleration.
	
 speed := speed min: (SpeedLimiter new speedLimitIn: where)! !

!Vehicle methodsFor: 'move' stamp: 'NR 9/7/2024 18:24:00'!
altitudeAt: anAltitude

	^ altitude = anAltitude! !

!Vehicle methodsFor: 'move' stamp: 'NR 9/7/2024 18:23:27'!
speedAt: aSpeed

	^ speed = aSpeed! !


!Vehicle methodsFor: 'on/off' stamp: 'VS 9/16/2025 20:48:08'!
turnOff

	state := Off on: self.
	speed := 0 * kilometer / hour! !

!Vehicle methodsFor: 'on/off' stamp: 'VS 9/16/2025 20:48:17'!
turnOn

	state := On on: self.! !


!Vehicle methodsFor: 'error messages' stamp: 'VS 9/16/2025 21:04:10'!
canNotAccelerateErrorMessage

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Vehicle class' category: #'4.Replace-if-All'!
Vehicle class
	instanceVariableNames: ''!

!Vehicle class methodsFor: 'instance creation' stamp: 'VS 9/16/2025 21:23:02'!
electricMotorcycle

	^ Motorcycle new initializeWithEngine: (ElectricEngine new) andSurroundings: #city

! !

!Vehicle class methodsFor: 'instance creation' stamp: 'VS 9/16/2025 21:23:09'!
gasolineMotorcycle

	^ Motorcycle new initializeWithEngine: (GasolineEngine new) andSurroundings: #openRoad! !

!Vehicle class methodsFor: 'instance creation' stamp: 'VS 9/16/2025 21:23:17'!
helicopter

	^ Helicopter  new initializeWithEngine: (JetFueledEngine new) andSurroundings: #skies! !


!classDefinition: #Helicopter category: #'4.Replace-if-All'!
Vehicle subclass: #Helicopter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!Helicopter methodsFor: 'error messages' stamp: 'VS 9/16/2025 21:04:27'!
canNotAccelerateErrorMessage 
^'Can not fly when turned off'! !


!Helicopter methodsFor: 'moving' stamp: 'VS 9/17/2025 13:35:43'!
accelerateWhenTurnedOn

	super accelerateWhenTurnedOn .
	altitude := altitude + (5 * meter) .
	! !


!classDefinition: #Motorcycle category: #'4.Replace-if-All'!
Vehicle subclass: #Motorcycle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '4.Replace-if-All'!

!Motorcycle methodsFor: 'error messages' stamp: 'VS 9/16/2025 21:04:39'!
canNotAccelerateErrorMessage

^'Can not run when turned off'! !
