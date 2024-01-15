extends Node2D

const TEXTURA_1 = preload("res://scenes/ingrediente1.tscn")
const TEXTURA_2 = preload("res://scenes/ingrediente2.tscn")
const TEXTURA_3 = preload("res://scenes/ingrediente3.tscn")
const TEXTURA_4 = preload("res://scenes/ingrediente4.tscn")
const TEXTURA_5 = preload("res://scenes/ingrediente5.tscn")
const TEXTURA_9 = preload("res://scenes/ingrediente9.tscn")

@onready var ingrediente_scene : PackedScene

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			cambiar_textura_aleatoria()

# Método para instanciar y posicionar un nuevo ingrediente
func cambiar_textura_aleatoria():
	randomize()
	var arrays = [TEXTURA_9]
	var kinds = arrays[randi()%arrays.size()]
	var ingrediente = kinds.instantiate()
	add_child(ingrediente)
	ingrediente.global_position = Vector2(-15, -151)
