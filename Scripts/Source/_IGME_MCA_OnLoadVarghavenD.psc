Scriptname _IGME_MCA_OnLoadVarghavenD extends ObjectReference  

Quest Property MQuest  Auto  

Event OnTriggerEnter(ObjectReference akActionRef)
    if(akActionRef == Game.GetPlayer())
        if(MQuest.GetStage() < 5)
            MQuest.SetStage(5)
            MQuest.SetObjectiveDisplayed(5)
        endif
    endif
endevent

