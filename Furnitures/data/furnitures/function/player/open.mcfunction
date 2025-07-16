execute at @s run summon item_display ~ ~ ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["ui","new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["ui","new"],DisplayState:{Name:"minecraft:air"},Passengers:[{id:"minecraft:marker",Tags:["ui","new"]}]}]}

scoreboard players add .global HasFurnitureUI 1
scoreboard players operation @s HasFurnitureUI = .global HasFurnitureUI
scoreboard players operation @e[tag=new] HasFurnitureUI = .global HasFurnitureUI

scoreboard players set .type FurnitureUI 1
execute as @e[type=chest_minecart,tag=new] run function furnitures:menu/demo/page/open
execute as @e[type=chest_minecart,tag=new] run function furnitures:minecart/load_page

tag @e remove new