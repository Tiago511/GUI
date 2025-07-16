data modify storage ui mask set from storage ui current
execute on passengers run function furnitures:menu/get_mask with entity @s data.page
data modify storage ui current set from storage ui mask

execute if score .type FurnitureUI matches 1 run function furnitures:minecart/load_page