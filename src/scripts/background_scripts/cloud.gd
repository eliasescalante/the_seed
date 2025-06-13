extends Node2D

@export var velocidad: float = 20.0
@export var distancia_limite: float = 500.0

var posicion_inicial: Vector2

func _ready() -> void:
	posicion_inicial = position

func _process(delta: float) -> void:
	position.x += velocidad * delta

	if position.x >= posicion_inicial.x + distancia_limite:
		position.x = posicion_inicial.x
