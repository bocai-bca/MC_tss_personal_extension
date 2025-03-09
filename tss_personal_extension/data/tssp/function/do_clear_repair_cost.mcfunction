execute unless data entity @s SelectedItem run return run tellraw @s [{"text":"手持物品为空","color":"red"}]
item modify entity @s weapon.mainhand tssp:clear_repair_cost