Scriptname igme_bear_death extends ObjectReference  

Quest Property igmeBloodMoon  Auto  

Event onDeath(Actor killer)
		igmebloodmoon.SetStage(180)
EndEvent