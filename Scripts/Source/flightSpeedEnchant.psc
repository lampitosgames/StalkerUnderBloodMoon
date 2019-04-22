Scriptname flightSpeedEnchant extends activemagiceffect  
{This will make a magic effect increase speed based on missing health.}

import debug

Float Property maxSpeed = 250.0 Auto
Actor target
Float baseSpeed

Event OnEffectStart(Actor akTarget, Actor akCaster)
	; Target Actor
	target = GetTargetActor()
	RegisterForUpdate(0.5)
	Debug.Trace("yo")
	Debug.Trace(target == Game.GetPlayer())
	baseSpeed = target.GetActorValue("SpeedMult")
endEvent

Event OnUpdate()

	Debug.Trace("HI THERE FUTURE ME!")
	Float percentage = 1 - (target.GetActorValuePercentage("Health"))
	; adjustedSpeed = interpolate with percentage and magnitude
	Float adjustedSpeed = baseSpeed + (percentage * (maxSpeed - baseSpeed))
	target.SetActorValue("SpeedMult", adjustedSpeed)
	Debug.Trace("percentage is: " + percentage )
	Debug.Trace("baseSpeed is: " + baseSpeed)
	Debug.Trace("adjustedSpeed is: " + adjustedSpeed )
	Debug.Trace("target is: " + target)
	Debug.Trace("maxSpeed is: " + maxSpeed )
	RegisterForUpdate(0.5)

endEvent

	; Player's current health value
	; Float currentHP = target.GetActorValue("Health")
	; Player's max health
	; Float maxHP = target.GetAVMax("Health")
	; Float percentage = 1 - (currentHP / maxHP)