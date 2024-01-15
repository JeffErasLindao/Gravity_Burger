extends RigidBody2D

const FALL_SPEED: float = 50.0


# Called when the node enters the scene tree for the first time.
func _ready():
	# Establece la gravedad para que el objeto caiga lentamente
	gravity_scale = 1.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Puedes agregar lógica adicional aquí si es necesario
	pass
