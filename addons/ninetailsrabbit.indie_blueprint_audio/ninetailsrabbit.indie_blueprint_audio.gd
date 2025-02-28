@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton(MyPluginSettings.AudioManagerSingleton, "res://addons/ninetailsrabbit.indie_blueprint_audio/src/audio_manager.gd")
	add_autoload_singleton(MyPluginSettings.MusicManagerSingleton, "res://addons/ninetailsrabbit.indie_blueprint_audio/src/music_manager.gd")
	add_autoload_singleton(MyPluginSettings.SoundPoolSingleton, "res://addons/ninetailsrabbit.indie_blueprint_audio/src/sound_pool.gd")
	
	MyPluginSettings.setup_sound_pool_settings()
	

func _exit_tree() -> void:
	remove_autoload_singleton(MyPluginSettings.SoundPoolSingleton)
	remove_autoload_singleton(MyPluginSettings.MusicManagerSingleton)
	remove_autoload_singleton(MyPluginSettings.AudioManagerSingleton)
