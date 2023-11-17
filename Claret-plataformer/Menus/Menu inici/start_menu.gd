extends CenterContainer

@onready var start_game_button = %StartGameButton

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	start_game_button.grab_focus()

func _on_start_game_button_pressed():
	await LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://Nivells/Nivell 1/level_one.tscn")
	LevelTransition.fade_from_black()
	
func _on_lvl2_button_pressed():
	await LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://Nivells/Nivell 2/level_two.tscn")
	LevelTransition.fade_from_black()
	
func _on_quit_button_pressed():
	get_tree().quit()
