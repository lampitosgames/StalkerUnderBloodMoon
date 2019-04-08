Scriptname AdvanceQuestStageTester extends ObjectReference  
{Used to beat sample quests}

Quest Property NewProperty  Auto  

Quest Property Questref  Auto  

Quest Property myQuest  Auto  
{the reference to the quest}

 Event OnActivate(ObjectReference akActionRef)
	Debug.MessageBox("Hello, World!")
	myQuest.SetStage(20)

EndEvent