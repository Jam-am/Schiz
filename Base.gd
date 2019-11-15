extends Node
var beginning_text = "......... Schiz! It's me! Listen!!! There out to get you!! You must kill them before they kill you! TRUST ME! Watch out, They have a white shirt!"
var text_array = ["Whoops, I was wrong, they're wearing a blue shirt!","Oh no! I forgot to mention they have green hair","Oh wait! Find the man with the glasses now!"]
var NPC_Resource = load("res://NPCs/NPC.tscn")
onready var player = $MusicPlayer
onready var pop_label = $UI/popLabel
onready var hon_label = $UI/honLabel
onready var top_left = $Points/TopLeft
onready var top_right = $Points/TopRight
onready var bottom_left = $Points/BottomLeft
onready var bottom_right = $Points/BottomRight
var population = 40
var honor_points = 0

func _ready():
	player.play()
	randomize()
	for i in range(10):
		var NPC = NPC_Resource.instance()
		add_child(NPC)
		NPC.position = top_left.position
	for i in range(10):
		var NPC = NPC_Resource.instance()
		add_child(NPC)
		NPC.position = top_right.position
	for i in range(10):
		var NPC = NPC_Resource.instance()
		add_child(NPC)
		NPC.position = bottom_left.position
	for i in range(10):
		var NPC = NPC_Resource.instance()
		add_child(NPC)
		NPC.position = bottom_right.position

func _process(delta):
	pop_label.text = "Population: " + String(population)
	hon_label.text = "Points: " + String(honor_points)