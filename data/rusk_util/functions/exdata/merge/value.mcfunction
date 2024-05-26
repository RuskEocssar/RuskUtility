#> rusk_util:exdata/merge/value
# データをマージする
# @public
# in:
#   path -> マージ先のパス
#   data -> マージするデータ
# out : none

## データのマージ
    # マクロ/情報の準備
    data modify storage rusk_util:exdata.core macro set value {path:"",data:{},id:-1}
    data modify storage rusk_util:exdata.core macro merge from storage rusk_util:exdata in
    # idの取得
    execute store result storage rusk_util:exdata.core macro.id int 1 run scoreboard players operation estH. estS.id = @s estS.id
    # マクロによるマージの実行
    function rusk_util:zz/exdata/merge/value with storage rusk_util:exdata.core macro