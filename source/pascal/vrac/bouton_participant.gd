extends TextureButton

# 3 couleurs
var lost_color= Color(0.492188,0.136505,0.136505)
var win_color=  Color(0.155957,0.492188,0.136505)
var neutral_color= Color(0.414062,0.414062,0.414062)

# 3 états : 0 match nul, 1 je gagne, 2 je pers
var state

# valeurs par défaut (id et label)
var me_id= 1
var me_name
var other_id= 2
var other_name


func _ready():
	# initialisation des couleurs
	state= 0
	$VBoxContainer/me/fonds.modulate =  neutral_color
	$VBoxContainer/other/fonds.modulate= neutral_color
	
	# initialisation des labels
	var me_name= "moi (participant"+str(me_id)+")"
	var other_name= "vs participant"+str(other_id)
	$VBoxContainer/me.set_text(me_name)
	$VBoxContainer/other.set_text(other_name)


func _process(delta):
	#$VBoxContainer/me.set_text(me_name)
	#$VBoxContainer/other.set_text(other_name)
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass


func _on_clic_pressed():
	state = (state+1)%3
	print("pressed : state = ",state)
	
	if state==0 :
		$VBoxContainer/me/fonds.modulate = neutral_color
		$VBoxContainer/other/fonds.modulate= neutral_color
	if state==1:
		$VBoxContainer/me/fonds.modulate = win_color
		$VBoxContainer/other/fonds.modulate= lost_color
	if state==2:
		$VBoxContainer/me/fonds.modulate = lost_color
		$VBoxContainer/other/fonds.modulate= win_color 
		