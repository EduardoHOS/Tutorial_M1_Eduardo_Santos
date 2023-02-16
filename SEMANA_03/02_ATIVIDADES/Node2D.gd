extends Node2D

var lista1 = ["brocolis", "queijo","macarrão","azeite","alho"]
var delete = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _on_Button_lista1_pressed():
	$RichTextLabel.text = ""
	$RichTextLabel.text = String(lista1)
	delete = true 
	
func _on_Button_lista2_pressed():
	
	if delete: 
		$RichTextLabel.text = ""
		$RichTextLabel.text += $lista_vazia_ex2.text
		$lista_vazia_ex2.text =""
		delete = false
	
	$RichTextLabel.text += "\n"+ $lista_vazia_ex2.text
	$lista_vazia_ex2.text =""
	
func _on_Button_lista3_pressed():
	delete = true 
	$RichTextLabel.text = ""
	$RichTextLabel.text = "Até cortar os próprios defeitos pode ser perigoso. Nunca se sabe qual é o defeito que sustenta nosso edifício inteiro."
	
func _on_Button_lista4_pressed():
	delete = true 
	$RichTextLabel.text = ""
	$RichTextLabel.text = $lista_ex4.text
	$lista_ex4.text = ""
	
