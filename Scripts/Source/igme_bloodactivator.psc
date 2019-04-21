Scriptname IGME_BloodActivator extends ObjectReference  
{Activates the Bloodmoon Quest upon collision}

Quest Property IGME_HircineQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	debug.Trace("entered trigger")
	IGME_HircineQuest.Start()
	IGME_HircineQuest.SetStage(0)
EndEvent