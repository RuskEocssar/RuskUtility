#> rusk_util:exdata/zz/get_custom_id
# カスタム個別ストレージ用のidを取得する
# @within
#   function rusk_util:exdata/**

## idを取得
    $return run scoreboard players operation estH. estS.id = @s estS.id.$(custom_name)