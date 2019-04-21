;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname TIF__050024FD Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
akspeaker.PlaceAtMe(fx)
akspeaker.Disable()
Quest q = GetOwningQuest()
q.SetObjectiveCompleted(5, 1)
q.SetObjectiveDisplayed(7)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Explosion Property FX  Auto  
{FX to play on dialouge end}
