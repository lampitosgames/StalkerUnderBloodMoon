Scriptname ActivateHircineSetEffect extends ActiveMagicEffect  

MagicEffect Property DetectLife auto
Weapon Property HircineBow auto
Armor Property HircineHelmet auto
Armor Property HircineArmor auto
Armor Property HircineGauntlets auto
Armor Property HircineBoots auto
bool wearingArmor = false
int bonusDamage = 30

Event OnEffectStart(Actor akTarget, Actor akCaster)

	if(akCaster.IsEquipped(HircineBow) && akCaster.IsEquipped(HircineHelmet) && akCaster.IsEquipped(HircineArmor) && akCaster.IsEquipped(HircineGauntlets) && akCaster.IsEquipped(HircineBoots))
		wearingArmor = true
	endIf
	
	if(akTarget.HasMagicEffect(DetectLife) && wearingArmor)
		akTarget.DamageAV("Health", bonusDamage)
	endIf
		
	wearingArmor = false	
EndEvent



