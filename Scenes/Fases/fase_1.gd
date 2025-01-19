extends Node2D


func _ready():
	Global.imin = "fase_1"


func _on_1_to_2_area_entered(_area):
	$Camera2D.global_position = $"Doors+areas/1_to_2/pos_1".global_position


func _on_2_1_3_area_entered(_area):
	$Camera2D.global_position = $"Doors+areas/2_1_3/pos_2".global_position



func _on_3_2_area_entered(_area):
	$Camera2D.global_position = $"3_2/pos_3".global_position


func _on_timer_timeout():
	get_tree().call_deferred("change_scene_to_file","res://Scenes/Fases/fase_2.tscn")


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://Scenes/Fases/fase_2.tscn")
