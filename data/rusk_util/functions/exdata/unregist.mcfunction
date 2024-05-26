#> rusk_util:exdata/unregist
# 実行者エンティティの個別ストレージ登録の解除
# @public
# in: none

## 登録の解除
    # マクロ/情報の準備
    data modify storage rusk_util:exdata.core macro set value {id:-1}
    # idの取得
    execute store result storage rusk_util:exdata.core macro.id int 1 run scoreboard players operation rsuH. rsuS.exd.id = @s rsuS.exd.id
    scoreboard players reset @s rsuS.exd.id
    # マクロによるストレージの削除
    function rusk_util:zz/exdata/unregist/reset_data with storage rusk_util:exdata.core macro