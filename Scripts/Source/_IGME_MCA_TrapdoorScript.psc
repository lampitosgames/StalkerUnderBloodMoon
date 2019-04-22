Scriptname _IGME_MCA_TrapdoorScript extends ObjectReference  

Quest Property MQuest  Auto  

Event OnTriggerEnter(ObjectReference akActionRef)
    if(akActionRef==PlayerRef)
        if(MQuest.GetStage() == 80)
            MQuest.SetStage(90)
        endif
    endif
endevent
Actor Property PlayerRef  Auto  
