extends Area2D

@warning_ignore("unused_parameter")
func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.name == "Player_Area2D":
		if Global.imin == "fase_1":
			get_parent().get_node("AnimationPlayer").play("shader")


		if Global.imin == "fase_2":
			get_tree().call_deferred("change_scene_to_file", "res://Scenes/Fases/fase_3.tscn")
		
