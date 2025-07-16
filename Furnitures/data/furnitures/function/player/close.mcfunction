scoreboard players operation #search HasFurnitureUI = @s HasFurnitureUI

execute as @e[type=chest_minecart,tag=ui] if score @s HasFurnitureUI = #search HasFurnitureUI run data remove entity @s Items

execute as @e[tag=ui] if score @s HasFurnitureUI = #search HasFurnitureUI run kill @s

scoreboard players reset .global HasFurnitureUI

scoreboard players reset @s HasFurnitureUI