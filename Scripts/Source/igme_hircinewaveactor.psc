Scriptname IGME_HircineWaveActor extends Actor  

Quest Property IGME_HircineQuest Auto
GlobalVariable Property IGME_HircineKill Auto

Event OnDeath(Actor akKiller)
	int stage = IGME_HircineQuest.GetStage()

	if stage == 10 && IGME_HircineQuest.ModObjectiveGlobal(1, IGME_HircineKill, 10, 4, true, true, false)
		IGME_HircineQuest.SetStage(19)
	endif
	if stage == 20 && IGME_HircineQuest.ModObjectiveGlobal(1, IGME_HircineKill, 20, 8, true, true, false)
		IGME_HircineQuest.SetStage(29)
	endif
	if stage == 30 && IGME_HircineQuest.ModObjectiveGlobal(1, IGME_HircineKill, 30, 12, true, true, false)
		IGME_HircineQuest.SetStage(39)
	endif
	if stage == 40 && IGME_HircineQuest.ModObjectiveGlobal(1, IGME_HircineKill, 40, 16, true, true, false)
		IGME_HircineQuest.SetStage(49)
	endif
	if stage == 50 && IGME_HircineQuest.ModObjectiveGlobal(1, IGME_HircineKill, 50, 19, true, true, false)
		IGME_HircineQuest.SetStage(100)
	endif
EndEvent
