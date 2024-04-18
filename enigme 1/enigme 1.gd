extends Control


@export var imageTop : Texture


@onready var textureTop = $PanelContainer/MarginContainer/VBoxContainer/TextureRect


func _ready():
	textureTop = imageTop
	
	
