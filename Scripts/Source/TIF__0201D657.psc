;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TIF__0201D657 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if(TalkedToGlobal.GetValue() == 2)
  GetOwningQuest().SetObjectiveDisplayed(20)
  GetOwningQuest().SetStage(20)
else
  TalkedToGlobal.Mod(1)
endIf
GetOwningQuest().SetObjectiveCompleted(11)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property TalkedToGlobal  Auto  
