;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname TIF__0201D64A Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_5
Function Fragment_5(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if(TalkedToGlobal.GetValue() == 2)
  GetOwningQuest().SetObjectiveDisplayed(20)
  GetOwningQuest().SetStage(20)
else
  TalkedToGlobal.Mod(1)
endIf
GetOwningQuest().SetObjectiveCompleted(13)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property TalkedToGlobal  Auto  
