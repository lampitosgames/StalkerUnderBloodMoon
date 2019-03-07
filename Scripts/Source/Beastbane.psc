Scriptname Beastbane extends Weapon

; The beastbane enchantment to modify the damage of
Enchantment Property EnchBeastbane Auto
; How much magicka the bow drains per second
Float Property MagickaPerSecond Auto
; How much the damage increases per second
Float Property DamageAddedPerSecond Auto
; How many times per second does the bow update?
Float Property TickSpeed Auto

; Pointer to the player. Useful so we don't have to repeatedly call GetPlayer
Actor pc
; Store the enchantment's base magnitude
Float baseEnchMagnitude
; Tracks the charged powershot damage. Equal to baseEnchMagnitude + Seconds*DamageAddedPerSecond
Float channeledDamageTotal

Event OnInit()
  ; Get the player
  pc = Game.GetPlayer()
  ; Register to lots of bow animation events.
	registerForAnimationEvent(pc, "arrowAttach")
	registerForAnimationEvent(pc, "BowDrawn")
	registerForAnimationEvent(pc, "arrowRelease")
	registerForAnimationEvent(pc, "attackStop")
  ; Store the base enchantment's magnitude before it is modified
  baseEnchMagnitude = EnchBeastbane.GetNthEffectMagnitude(0)
endEvent

Event OnAnimationEvent(ObjectReference akSource, string asEventName)
  ; Ensure that the player character is the one triggering the event
  if (akSource == pc)
    ; On the arrow attach event (when the player first starts drawing)
    if (asEventName == "arrowAttach")
      ; Reset the enchantment effect back to base and the channeled damage to 0
      EnchBeastbane.SetNthEffectMagnitude(0, baseEnchMagnitude)
      channeledDamageTotal = 0.0
    ; Triggers once the bow is FULLY drawn. When this happens, begin channeling
    elseif (asEventName == "BowDrawn")
      ; Register for the update event
      RegisterForUpdate(1.0 / TickSpeed)
    ; When the arrow is released
    elseif (asEventName == "arrowRelease" || asEventName == "attackStop")
      ; Stop channeling
      UnregisterForUpdate()
    endIf
  endIf
EndEvent

Event OnUpdate()
  ; Ensure the player has enough magicka to drain
  if (pc.GetAV("magicka") > MagickaPerSecond / TickSpeed)
    ; Add to the total channeled damage
    channeledDamageTotal += DamageAddedPerSecond / TickSpeed
    ; Pass new damage value to the enchantment
    EnchBeastbane.SetNthEffectMagnitude(0, baseEnchMagnitude + channeledDamageTotal)
    ; Drain the player's magicka
    pc.DamageAV("magicka", MagickaPerSecond / TickSpeed)
  endIf
EndEvent