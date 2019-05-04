;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 30
Scriptname QF_igmeBloodMoon_01000B16 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Alias_Sigrid
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Alias_Sigrid Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Alias_Havgrir
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Alias_Havgrir Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Alias_Campsite
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Alias_Campsite Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(95)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveDisplayed(20)
SetObjectiveCompleted(10)
Game.FadeOutGame(false, true, 1.0, 3.0)
SigridREF.MoveTo(CampsiteMarker)
CreedRef.MoveTo(CampsiteMarker)
HavgrirRef.MoveTo(CampsiteMarker)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(70)
SetObjectiveDisplayed(75)
Game.GetPlayer().MoveTo(PillOfFireStart)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
SetObjectiveCompleted(150)
SetObjectiveDisplayed(160)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
SetObjectiveCompleted(125)
SetObjectiveDisplayed(130)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
Game.GetPlayer().MoveTo(SheoIslandLanding)
SetObjectiveCompleted(45)
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(75)
SetObjectiveDisplayed(80)
PillarRef.Disable(false)
SigridREF.Enable(false)
CreedRef.Enable(false)
HavgrirRef.Enable(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
Game.GetPlayer().MoveTo(BloodmoonStart)
SetObjectiveCompleted(110)
SetObjectiveDisplayed(125)
SigridREF.Disable(false)
CreedRef.Disable(false)
HavgrirRef.Disable(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
SetObjectiveDisplayed(10)
WindhelmSigrid.Disable(false)
Game.GetPlayer().MoveTo(SheoIslandLanding)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
finalbear.Enable(false)
SetObjectiveCompleted(150)
SetObjectiveDisplayed(170)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN CODE
SetObjectiveCompleted(170)
SetObjectiveDisplayed(180)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
Game.GetPlayer().MoveTo(CampsiteMarker)
SetObjectiveCompleted(130)
SetObjectiveDisplayed(140)
SigridREF.Disable(false)
CreedRef.Disable(false)
HavgrirRef.Disable(false)
GhostlyHircy.Enable(false)
SigridDead.Enable(false)
CreedCorpse.Enable(false)
HavgrirDead.Enable(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(60)
SetObjectiveDisplayed(70)
Game.FadeOutGame(false, true, 1.0, 3.0)
GameHour.SetValue(22)
PillarRef.Enable(false)
SigridREF.Disable(false)
CreedRef.Disable(false)
HavgrirRef.Disable(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
SetObjectiveCompleted(90)
SetObjectiveDisplayed(95)
Game.GetPlayer().MoveTo(HorkerIslandRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
SetObjectiveCompleted(140)
SetObjectiveDisplayed(150)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveCompleted(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
SetObjectiveCompleted(110)
SetObjectiveDisplayed(120)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveCompleted(80)
SetObjectiveDisplayed(90)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(40)
boattowerewolf.Enable(false)
SetObjectiveDisplayed(45)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(30)
boattowerewolf.Enable(true)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
SetObjectiveCompleted(100)
SetObjectiveDisplayed(110)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property islandRef  Auto  

ObjectReference Property igmewerewolfboat  Auto  

ObjectReference Property WindhelmSigrid  Auto  

ObjectReference Property SheoIslandLanding  Auto  

ObjectReference Property SigridREF  Auto  

ObjectReference Property CreedRef  Auto  

ObjectReference Property HavgrirRef  Auto  

ObjectReference Property CampsiteMarker  Auto  

ObjectReference Property boattowerewolf  Auto  

GlobalVariable Property GameHour  Auto  

ObjectReference Property PillarRef  Auto  

ObjectReference Property PillarDestRef  Auto  

ObjectReference Property HorkerIslandRef  Auto  


ObjectReference Property BloodmoonGroveRef  Auto  

ObjectReference Property GhostlyHircy  Auto  

ObjectReference Property PillOfFireStart  Auto  

ObjectReference Property BloodmoonStart  Auto  

ObjectReference Property finalbear  Auto  

ObjectReference Property SigridDead  Auto  

Int Property CreedDead  Auto  

ObjectReference Property CreedCorpse  Auto  

ObjectReference Property HavgrirDead  Auto  
