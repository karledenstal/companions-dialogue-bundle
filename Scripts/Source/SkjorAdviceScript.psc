Scriptname SkjorAdviceScript extends Quest Hidden 

GlobalVariable Property AdviceCounter Auto
GlobalVariable Property AdviceShouldBeGiven Auto
GlobalVariable Property GameDaysPassed Auto
Actor Property PlayerRef Auto
Spell Property SkjorAdviceSpell Auto

Function RegisterAdviceAsGiven()
	AdviceShouldBeGiven.SetValue(GameDaysPassed.GetValue() + 1)
	AdviceCounter.SetValueInt(AdviceCounter.GetValueInt() + 1)
EndFunction

Function ApplyEffect()
	PlayerRef.AddSpell(SkjorAdviceSpell)
EndFunction