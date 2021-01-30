scoreboard objectives remove difficulty
scoreboard objectives add difficulty trigger
scoreboard objectives remove alreadyConnected
scoreboard objectives add alreadyConnected dummy
scoreboard players enable @a difficulty
scoreboard players enable @a alreadyConnected

scoreboard objectives add trigdiffSettings dummy

scoreboard players set dummy alreadyConnected -666
