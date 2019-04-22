Scriptname _IGME_MCA_OnLoadVarghaven extends ObjectReference  

Quest Property MQuest  Auto  

Event OnCellAttach()
    if(MQuest.GetStage() < 5)
        MQuest.SetStage(5)
    endif
endevent
Quest Property MQuest  Auto  
