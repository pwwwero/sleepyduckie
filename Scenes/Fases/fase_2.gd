extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.is_awake = true
	Global.imin = "fase_2"




func _on_1_2_area_entered(_area):
	$Camera2D.global_position = $"1_2/pos_1".global_position


func _on_2_1_3_area_entered(_area):
	$Camera2D.global_position = $"2_1_3/pos_2".global_position
