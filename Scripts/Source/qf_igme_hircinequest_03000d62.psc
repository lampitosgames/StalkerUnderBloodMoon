;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 21
Scriptname QF_IGME_HircineQuest_03000D62 Extends Quest Hidden

;BEGIN ALIAS PROPERTY W1_2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W1_2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W4_2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W4_2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY portal2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_portal2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Portal1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Portal1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W4_1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W4_1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W1_1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W1_1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W1_4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W1_4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W2_1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W2_1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W3_1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W3_1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W2_2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W2_2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Pedestal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Pedestal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W5_2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W5_2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W2_3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W2_3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GhostActor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GhostActor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Location
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Location Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Armor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Armor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W2_4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W2_4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W1_3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W1_3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W3_2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W3_2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY portal4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_portal4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W4_4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W4_4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W5_3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W5_3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W3_4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W3_4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W3_3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W3_3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W5_1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W5_1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY W4_3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_W4_3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY portal3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_portal3 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveCompleted(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
; Get the refs
ObjectReference w1 = Alias_W5_1.GetRef()
ObjectReference w2 = Alias_W5_2.GetRef()
ObjectReference w3 = Alias_W5_3.GetRef()

; Awaken the three statues - two wolves first then the bear
w2.PlaceAtMe(ShatterFx)
Alias_W5_2.ForceRefTo(w2.PlaceAtMe(Werewolf))
w2.Delete()
w3.PlaceAtMe(ShatterFx)
Alias_W5_3.ForceRefTo(w3.PlaceAtMe(Werewolf))
w3.Delete()
; Spawn the werewolves

; Wait 1
Utility.Wait(5)

; Spawn the werebear
w1.PlaceAtMe(ShatterFx)
Alias_W5_1.ForceRefTo(w1.PlaceAtMe(Werebear))
w1.Delete()

; Show the objective
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
SetObjectiveCompleted(30)
Utility.Wait(2)
SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(10)
Utility.Wait(2)
SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveCompleted(20)
Utility.Wait(2)
SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveDisplayed(40)

; Enable Portal
Alias_Portal4.GetRef().PlaceAtMe(SummonFX)
Utility.Wait(0.5)

; Enable Animals
Alias_W4_1.GetRef().Enable(true)
Alias_W4_2.GetRef().Enable(true)
Alias_W4_3.GetRef().Enable(true)
Alias_W4_4.GetRef().Enable(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
SetObjectiveCompleted(0, 1)
SetObjectiveDisplayed(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(40)
Utility.Wait(3)
SetStage(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
setObjectiveDisplayed(30)

; Enable Portal
Alias_Portal3.GetRef().PlaceAtMe(SummonFX)
Utility.Wait(0.5)

; Enable Animals
Alias_W3_1.GetRef().Enable(true)
Alias_W3_2.GetRef().Enable(true)
Alias_W3_3.GetRef().Enable(true)
Alias_W3_4.GetRef().Enable(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveDisplayed(20)

; Enable Portal
Alias_Portal2.GetRef().PlaceAtMe(SummonFX)
Utility.Wait(0.5)

; Enable Animals
Alias_W2_1.GetRef().Enable(true)
Alias_W2_2.GetRef().Enable(true)
Alias_W2_3.GetRef().Enable(true)
Alias_W2_4.GetRef().Enable(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(7, 1)
SetObjectiveDisplayed(10)

; Enable Portal
Alias_Portal1.GetRef().PlaceAtMe(SummonFX)
Utility.Wait(0.5)

; Enable Wolves
Alias_W1_1.GetRef().Enable(true)
Alias_W1_2.GetRef().Enable(true)
Alias_W1_3.GetRef().Enable(true)
Alias_W1_4.GetRef().Enable(true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Explosion Property SummonFX Auto  

Explosion Property ShatterFx  Auto  

ActorBase Property Werewolf  Auto  

ActorBase Property Werebear  Auto  
