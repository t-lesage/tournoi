extends Node

# paramètres par défaut
var _total_players= 6
var is_saved= true

# paramètre globaux
var game
var score
var round_buttons
var round_buttons_list

# définition du conteneur
var main

# instanciation des scènes
var accueil= preload("res://accueil.tscn").instance()
var new_parameters= preload("res://new_parameters.tscn").instance()
var tournoi= preload("res://tournoi.tscn").instance()


# méthodes globales

func set_total_players(val):
	_total_players= val
	
func get_total_players():
	return _total_players

func button_hover(btn):
	btn.modulate= Color(1,1,1,0.5)

func button_init(btn):
	btn.modulate= Color(1,1,1,1)