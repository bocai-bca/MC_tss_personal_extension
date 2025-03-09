execute unless data entity @s SelectedItem run return run tellraw @s [{"text":"手持物品为空","color":"red"}]
execute if data entity @s {SelectedItem:{id:"minecraft:enchanted_book"}} run return run tellraw @s [{"text":"不能对附魔书使用取魔","color":"red"}]
execute unless data entity @s SelectedItem.components."minecraft:enchantments" run return run tellraw @s [{"text":"手持物品没有附魔","color":"red"}]

data modify storage tssp:main temp set from entity @s SelectedItem.components."minecraft:enchantments"
function tssp:do_remove_curse_give with storage tssp:main
item modify entity @s weapon.mainhand tssp:clear_enchant
data remove storage tssp:main temp