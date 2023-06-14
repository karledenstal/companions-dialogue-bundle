Scriptname SkjorAdviceScript extends Quest Hidden 

GlobalVariable Property AdviceCounter Auto
GlobalVariable Property AdviceShouldBeGiven Auto
GlobalVariable Property GameDaysPassed Auto

Function RegisterAdviceAsGiven()
	AdviceShouldBeGiven.SetValue(GameDaysPassed.GetValue() + 0.5)
	AdviceCounter.SetValueInt(AdviceCounter.GetValueInt() + 1)
EndFunction