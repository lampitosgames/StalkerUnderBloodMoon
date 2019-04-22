Scriptname _IGME_MCA_DiscoverWerewolves extends ObjectReference  

Quest Property MQuest  Auto  

Event OnTriggerEnter(ObjectReference akActionRef)
    if(akActionRef==PlayerRef)
        if(MQuest.GetStage() == 70)
            MQuest.SetStage(80)
        endif
    endif
endevent
Actor Property PlayerRef  Auto  
