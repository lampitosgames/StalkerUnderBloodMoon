Scriptname SpawnActorOnActivationScript extends ObjectReference  
{Spawns the specified actor on activation}

ActorBase Property NPC Auto
ObjectReference Property SpawnPlace Auto

Event OnActivate(ObjectReference akActionRef)
	If NPC && SpawnPlace
		SpawnPlace.PlaceActorAtMe(NPC)
	EndIf
EndEvent