extends Node2D
var teste = false
var valor = 0
var numero = 0 #não pode ter acentuação 
var lista = [] # identifiquei que é uma varivael não estava nomeada 
var nome = ''
var cont 
var i

func _ready():
	pass 
	
func _on_Button1_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #numero estva com acentuação, então teirei já que não pode e tbm tava sem $
	# $LineEdit.text = nome ta errado porque o nome que deve receber a propriedade
	nome = $LineEdit2.text
	$LineEdit.text = '' #adcionei essas duas strings para depois de adcionar sumir as informações
	$LineEdit2.text =''

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	lista = [] #para nao acumular nome 
	for i in range(numero): #mudei para numero 
		#numero+=i inutiu #não pode inicar com maiusculo N -> troquei n 
		lista.append(i) #mesmo erro de N 
		
		i += 1
	$Label.text = str (numero) # eu adicionei str para trnasformar variavel numero para string


func _on_Button3_pressed():
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	cont=0 #declarei variavel 
	i=0 #declarei variavel e joguei os dois para cima para não ficar repetindo
	while i < len(lista): # não tinha parametro de comparação 
		
		if(lista[i]%2==1):
			cont+=1
		if(cont==1): #para executar quando tiver um numero impar 
			nome = nome+ " " + "baldo"
			break #para não ficar repetindo 
		i += 1 # adicionado para mudar o valor para sempre fazer comparações novas 
	$Label.text = nome



