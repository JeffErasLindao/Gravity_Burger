extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body is CharacterBody2D:
		print("Colisión con CharacterBody2D")
		# Realiza acciones adicionales según sea necesario




func _on_area_entered(area):
	if area.is_in_group("ingredientes") and area.name == "ingredientes":
		print("Collided")

		# Detener el movimiento del objeto (en este caso, es un Area2D)
		if area.get_parent().has_method("set_linear_velocity"):
			area.get_parent().set_linear_velocity(Vector2.ZERO)
		
		if area.get_parent().has_method("set_gravity_scale"):
			area.get_parent().set_gravity_scale(0.0)  # Puedes ajustar este valor según sea necesario

		# Hacer que el ingrediente deje de moverse
		area.get_parent().ha_colisionado = true
