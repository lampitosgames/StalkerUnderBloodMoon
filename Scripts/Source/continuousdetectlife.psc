Scriptname ContinuousDetectLife extends activemagiceffect
{Auto-casts detect life every second}

import debug

actor Caster

spell property DetectLifeSpell auto

float property RecastInterval = 1.0 auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	Caster = akCaster
	Debug.Trace("It did a thing")
	DetectLifeSpell.Cast(Caster)

	RegisterForSingleUpdate(RecastInterval)

endEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

	self.UnregisterForUpdate()

endEvent

Event OnUpdate()

	DetectLifeSpell.Cast(Caster)
	RegisterForSingleUpdate(RecastInterval)
	
endEvent