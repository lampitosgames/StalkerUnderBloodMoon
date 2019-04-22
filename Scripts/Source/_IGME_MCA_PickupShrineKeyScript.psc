Scriptname _IGME_MCA_PickupShrineKeyScript extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if(MQuest.GetStage() >= 40 && MQuest.GetStage() < 50)
        if(akNewContainer == Game.GetPlayer())
            MQuest.SetStage(50)
        endif
    endif
EndEvent

Quest Property MQuest  Auto  