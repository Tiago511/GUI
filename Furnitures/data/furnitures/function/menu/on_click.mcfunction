function furnitures:run_cmd with storage ui in[0].components."minecraft:custom_data".ui_item

execute if score .type FurnitureUI matches 1 run function furnitures:minecart/load_page