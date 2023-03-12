extends Node2D
export var score_quiz = 25
var interactable_question_01: bool = false
var interactable_question_02: bool = false
var interactable_question_03: bool = false
var interactable_question_04: bool = false
var interactable_question_05: bool = false

func _ready():
	$Elevator.instruction = $Player/Scroll/Label
	$Elevator.instruction2 = $Player/Scroll/Label2
	$Elevator.instruction3 = $Player/Scroll/Label3
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("Elevator").player_entered:
		$Player.motion.y = $Elevator.move.y
		question_change(get_node("Elevator").level_at)
	pass

func question_change(level):
	if level == 0:
		if not $Player/QuestionBoxes/QuestionBox.visible:
			$Player/QuestionBoxes/QuestionBox/VBoxContainer/VBoxContainer/Option1.grab_focus()
			$Player/QuestionBoxes/QuestionBox.show()
		if $Player/QuestionBoxes/QuestionBox.chosen_option:
			get_node("Elevator").right_answer = true
			$Player/QuestionBoxes/QuestionBox.hide()
			if !interactable_question_01:
				PlayerData.score += score_quiz
				interactable_question_01 = true
	elif level == 1:
		if not $Player/QuestionBoxes/QuestionBox2.visible:
			$Player/QuestionBoxes/QuestionBox2/VBoxContainer/VBoxContainer/Option1.grab_focus()
			$Player/QuestionBoxes/QuestionBox2.show()
		if $Player/QuestionBoxes/QuestionBox2.chosen_option2:
			get_node("Elevator").right_answer = true
			$Player/QuestionBoxes/QuestionBox2.hide()
			if !interactable_question_02:
				PlayerData.score += score_quiz
				interactable_question_02 = true
	elif level == 2:
		if not $Player/QuestionBoxes/QuestionBox3.visible:
			$Player/QuestionBoxes/QuestionBox3/VBoxContainer/VBoxContainer/Option1.grab_focus()
			$Player/QuestionBoxes/QuestionBox3.show()
		if $Player/QuestionBoxes/QuestionBox3.chosen_option3:
			get_node("Elevator").right_answer = true
			$Player/QuestionBoxes/QuestionBox3.hide()
			if !interactable_question_03:
				PlayerData.score += score_quiz
				interactable_question_03 = true
	elif level == 3:
		if not $Player/QuestionBoxes/QuestionBox4.visible:
			$Player/QuestionBoxes/QuestionBox4/VBoxContainer/VBoxContainer/Option1.grab_focus()
			$Player/QuestionBoxes/QuestionBox4.show()
		if $Player/QuestionBoxes/QuestionBox4.chosen_option:
			get_node("Elevator").right_answer = true
			$Player/QuestionBoxes/QuestionBox4.hide()
			if !interactable_question_04:
				PlayerData.score += score_quiz
				interactable_question_04 = true
	elif level == 4:
		if not $Player/QuestionBoxes/QuestionBox5.visible:
			$Player/QuestionBoxes/QuestionBox5/VBoxContainer/VBoxContainer/Option1.grab_focus()
			$Player/QuestionBoxes/QuestionBox5.show()
		if $Player/QuestionBoxes/QuestionBox5.chosen_option:
			get_node("Elevator").right_answer = true
			$Player/QuestionBoxes/QuestionBox5.hide()
			if !interactable_question_05:
				PlayerData.score += score_quiz
				interactable_question_05 = true
