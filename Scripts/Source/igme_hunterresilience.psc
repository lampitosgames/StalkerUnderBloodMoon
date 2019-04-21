Scriptname IGME_HunterResilience extends activemagiceffect  
{Script that scales the regeneration of Hircine's Curiass by the number of pieces of the set the player has equipped}

Actor Property player Auto
{Player actor to check combat state}

Keyword Property setKey Auto
{Keyword that identifies the armor pieces in the hircine set}

Enchantment Property hunterEnch Auto
{Enchantment on the armor -- Hircine's Curiass which this effect is part of}

Float Property baseEnchMagnitude Auto
{The enchantment's base magnitude}

Float Property incEnchMagnitude Auto
{The amount the enchantment's magnitude increases per armor piece}

Event OnEffectStart(Actor akTarget, Actor akCaster)
  if akTarget == Game.GetPlayer()
    ;Debug.Trace("HELLO! We were equipped by the player!")
	player = akTarget
	
	UpdateEffect()
	
	;Debug.Trace("Player - " + player)
	
	RegisterForSingleUpdate(1.0)
  endIf
endEvent

Event OnUpdate()
	UpdateEffect()
	RegisterForSingleUpdate(1.0)
endEvent

Function UpdateEffect()
	int setCount = 0

	setCount += player.GetWornForm(0x00000001 + 0x00000002 + 0x00001000 + 0x00002000).HasKeyword(setKey) as int ; Head + Hair + Circlet + Ears Slot
	setCount += player.GetWornForm(0x00000004).HasKeyword(setKey) as int ; Body Slot
	setCount += player.GetWornForm(0x00000008).HasKeyword(setKey) as int ; Hands Slot
	setCount += player.GetWornForm(0x00000080).HasKeyword(setKey) as int ; Feet Slot
	setCount += player.GetEquippedWeapon().HasKeyword(setKey) as int ; Weapon Slot

	;Debug.Trace("UPDATING... Set count is - " + setCount)

	if(setCount != 0)
		;Debug.Trace("Player has " + setCount + " items in the set equipped")
		
		hunterEnch.SetNthEffectMagnitude(0, setCount*incEnchMagnitude + baseEnchMagnitude)
		hunterEnch.SetNthEffectMagnitude(1, setCount*incEnchMagnitude + baseEnchMagnitude)
		hunterEnch.SetNthEffectMagnitude(2, setCount*incEnchMagnitude + baseEnchMagnitude)
		
		;Debug.Trace("Enchantment health regen magnitude = " + hunterEnch.GetNthEffectMagnitude(0))
		;Debug.Trace("Enchantment magicka regen magnitude = " + hunterEnch.GetNthEffectMagnitude(1))
		;Debug.Trace("Enchantment stamina regen magnitude = " + hunterEnch.GetNthEffectMagnitude(2))
	endIf
EndFunction