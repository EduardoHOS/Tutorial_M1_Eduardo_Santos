extends Control

func _process(delta):
	$CanvasLayer/Label.text = "Bolsas:" + str(GlobalVar.Moedas)
