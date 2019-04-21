Scriptname SpawnActorAndFXOnTriggerEnter extends ObjectReference  
{Spawns a passed in actor and fx at a passed in object when the trigger is entered but only once}

ActorBase Property NPC Auto
ObjectReference Property SpawnPlace Auto
bool Property Activated = false Auto
Explosion Property fx Auto 
Quest Property IGME_HircineQuest Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	If NPC && SpawnPlace && !Activated
		SpawnPlace.PlaceAtMe(fx)
		Actor ghost = SpawnPlace.PlaceActorAtMe(NPC)

		; Get Ghost Actor Alias
		ReferenceAlias ghostAlias = IGME_HircineQuest.GetAlias(30) as  ReferenceAlias
		ghostAlias.ForceRefTo(ghost)
		IGME_HircineQuest.Start()
		IGME_HircineQuest.SetStage(5)

		Activated = true
	EndIf
EndEvent
