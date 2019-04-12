Scriptname AdvanceQuestStageTester extends ObjectReference  
{Used to beat sample quests}
Int Property QuestStage  Auto  
Quest Property myQuest  Auto  
{the reference to the quest}

 Event OnActivate(ObjectReference akActionRef)
	Debug.MessageBox("Hello, World!")
	myQuest.SetStage(questStage)

EndEvent

