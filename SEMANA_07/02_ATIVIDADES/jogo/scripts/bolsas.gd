extends Area2D


func _on_bolsas_body_entered(body):
	if body.name == "Edu":
		GlobalVar.Moedas += 1
		queue_free()
