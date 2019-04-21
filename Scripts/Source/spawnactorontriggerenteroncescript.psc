Scriptname SpawnActorOnTriggerEnterOnceScript extends ObjectReference  
{Spawns a passed in actor at a passed in object when the trigger is entered but only once}

ActorBase Property NPC Auto
ObjectReference Property SpawnPlace Auto
bool Property Activated = false Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	If NPC && SpawnPlace && !Activated
		SpawnPlace.PlaceActorAtMe(NPC)
		Activated = true
	EndIf
EndEvent