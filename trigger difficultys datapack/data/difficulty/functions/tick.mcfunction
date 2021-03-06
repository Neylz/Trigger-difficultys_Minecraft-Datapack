scoreboard players enable @a difficulty

#check if the player alreadyConnected on time
execute as @a at @s if score @s difficulty matches 0 unless score @s alreadyConnected matches -1 run scoreboard players set @s alreadyConnected -2
execute as @a at @s if score @s difficulty matches 0 if score @s alreadyConnected matches -2 run scoreboard players set @s difficulty -1
execute as @a at @s if score @s alreadyConnected matches -2 run scoreboard players set @s alreadyConnected -1

#peaceful
execute as @a at @s if score @s difficulty matches 0 if score @s alreadyConnected matches -1 run difficulty peaceful
execute as @a at @s if score @s difficulty matches 0 if score @s alreadyConnected matches -1 run tellraw @a ["",{"selector":"@s","underlined":true,"color":"dark_purple"},{"text":" change the difficulty to peaceful","color":"light_purple"}]
execute as @a at @s if score @s difficulty matches 0 if score @s alreadyConnected matches -1 run scoreboard players set @s difficulty -1

#easy
execute as @a at @s if score @s difficulty matches 1 if score easy trigdiffSettings matches 1 run difficulty easy
execute as @a at @s if score @s difficulty matches 1 if score easy trigdiffSettings matches 1 run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the world difficuty to easy"}]
execute as @a at @s if score @s difficulty matches 1 if score easy trigdiffSettings matches 0 run tellraw @s {"text":"This difficuty is not available in this world.","color":"red"}
execute as @a at @s if score @s difficulty matches 1 run scoreboard players set @s difficulty -1

#normal
execute as @a at @s if score @s difficulty matches 2 if score normal trigdiffSettings matches 1 run difficulty normal
execute as @a at @s if score @s difficulty matches 2 if score normal trigdiffSettings matches 1 run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the world difficuty to normal"}]
execute as @a at @s if score @s difficulty matches 2 if score normal trigdiffSettings matches 0 run tellraw @s {"text":"This difficuty is not available in this world.","color":"red"}
execute as @a at @s if score @s difficulty matches 2 run scoreboard players set @s difficulty -1

#hard
execute as @a at @s if score @s difficulty matches 3 if score hard trigdiffSettings matches 1 run difficulty hard
execute as @a at @s if score @s difficulty matches 3 if score hard trigdiffSettings matches 1 run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the world difficuty to hard"}]
execute as @a at @s if score @s difficulty matches 3 if score hard trigdiffSettings matches 0 run tellraw @s {"text":"This difficuty is not available in this world.","color":"red"}
execute as @a at @s if score @s difficulty matches 3 run scoreboard players set @s difficulty -1

#Out of Range
execute as @a at @s if score @s difficulty matches 4.. run tellraw @a ["",{"selector":"@s","underlined":true,"color":"dark_purple"},{"text":" tried to create a new difficulty. Please enter a number between 0 and 3."}]
execute as @a at @s if score @s difficulty matches 4.. run scoreboard players set @s difficulty -1