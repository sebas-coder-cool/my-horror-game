extends Node

signal coins_changed(new_amount)

var coins = 0
var diamonds = 0
var lifes = 5
var no_lifes = 0
var speed = 140

func add_coins(amount):
	coins += amount
	coins_changed.emit(coins)

func spend_coins(amount):
	if coins >= amount:
		coins -= amount
		coins_changed.emit(coins)
		return true

	return false

func check_lifes():
	if lifes == 0:
		no_lifes += 1
		
