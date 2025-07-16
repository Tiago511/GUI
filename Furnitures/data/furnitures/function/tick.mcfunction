execute as @e[scores={furniture=1..}] at @s run give @s compass[custom_data={furnituretool:1b},custom_name=[{"text":"Furnitures","italic":false,"bold":true,"color":"aqua"}],lore=[[{"text":"Left Click To Open","italic":false}]],rarity=epic]
execute as @e[scores={furniture=1..}] at @s run scoreboard players set @s furniture 0
scoreboard players enable @a[gamemode=creative] furniture
scoreboard players reset @a[gamemode=survival] furniture

execute as @a if items entity @s weapon.* *[custom_data={furnituretool:1b}] run function furnitures:player/teleport
execute as @a unless items entity @s weapon.* *[custom_data={furnituretool:1b}] run function furnitures:player/close

execute as @e[tag=ui,type=chest_minecart] at @s run function furnitures:minecart/tick
