Scriptname _IGME_MCA_PickupBootsScript extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
    if(MQuest.GetStage() >= 60 && MQuest.GetStage() < 70)
        if(akNewContainer == Game.GetPlayer())
            MQuest.SetStage(70)
            TheFence.MoveTo(TeleportFenceHere)
            ;turn everyone into werewolves
            Elder.PlaceAtMe(LvlWerewolfBoss)
            Elder.DisableNoWait()
            Elder.Delete()
            int i = 0
            while(i < Citizens.Length)
                Citizens[i].PlaceAtMe(Werewolf)
                Citizens[i].DisableNoWait()
                Citizens[i].Delete()
                i+=1
            endwhile
        endif
    endif
EndEvent

Quest Property MQuest  Auto  
Actor Property Elder  Auto  
Actor[] Property Citizens  Auto  
ActorBase Property Werewolf  Auto  
ActorBase Property LvlWerewolfBoss  Auto  
Actor Property TheFence  Auto  

ObjectReference Property TeleportFenceHere  Auto  
