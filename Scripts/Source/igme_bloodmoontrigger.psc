Scriptname IGME_BloodmoonTrigger extends ObjectReference  

Weather property Bloodmoon Auto
{Which weather override should be used?}

GlobalVariable property GameHour Auto
{The gamehour.}

Bool Property hasTriggered Auto

Event OnLoad()
	GameHour.SetValue(23)
EndEvent

Event OnTriggerEnter(ObjectReference akActionRef)
If akActionRef == Game.GetPlayer()
	If hasTriggered == false
		Bloodmoon.SetActive(True)
		hasTriggered = true
	EndIf
EndIf
EndEvent

Event OnUnload()
	Weather.ReleaseOverride()
EndEvent
