execute unless score @s HasFurnitureUI matches 0.. run function furnitures:player/open

scoreboard players operation #search HasFurnitureUI = @s HasFurnitureUI
execute at @s as @e[type=item_display,tag=ui] if score @s HasFurnitureUI = #search HasFurnitureUI run tp @s ~ ~1 ~