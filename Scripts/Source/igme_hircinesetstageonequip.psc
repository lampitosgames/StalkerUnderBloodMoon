Scriptname IGME_HircineSetStageOnEquip extends ReferenceAlias  
{Advances the quest on armor equip}

Quest Property IGME_HircineQuest Auto

Event OnEquipped(Actor akActor)
    IGME_HircineQuest.SetStage(10)
EndEvent