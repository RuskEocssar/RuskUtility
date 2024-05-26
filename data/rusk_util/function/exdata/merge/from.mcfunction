#> rusk_util:exdata/merge/from
# データをマージする
# @public
# in:
#   storage_name -> マージを行うストレージ名
#   path -> マージ先のパス
#   source_type -> マージするデータ元の種類 block, entity, storage
#   source_target -> マージするデータ元の指定 block : 座標, entity : 名前またはセレクタ, storage : 名前空間 
#   source_path -> マージするデータ元のパス

# ## 入力値のバックアップ
#     data modify storage rusk_util:exdata/core in_backup append from storage rusk_util:exdata/ in

## データのマージ
    # マクロ/情報の準備
    data modify storage rusk_util:exdata/core macro set value {custom_name:"",path:"",source_type:"storage",source:"",source_path:"",dot:"",id:-1}
    data modify storage rusk_util:exdata/core macro merge from storage rusk_util:exdata/ in
    # idの取得
        # custom_nameが指定されていない時
        execute if data storage rusk_util:exdata/core macro{custom_name:""} store result storage rusk_util:exdata/core macro.id int 1 run scoreboard players operation estH. estS.id = @s estS.id
        # custom_nameが指定されている時
        execute unless data storage rusk_util:exdata/core macro{custom_name:""} run data modify storage rusk_util:exdata/core macro.dot set value "."
        execute unless data storage rusk_util:exdata/core macro{custom_name:""} store result storage rusk_util:exdata/core macro.id int 1 run function rusk_util:exdata/zz/get_custom_id with storage rusk_util:exdata/core macro
    # マクロによるマージの実行
    function rusk_util:exdata/zz/merge/from with storage rusk_util:exdata/core macro

# ## 入力を戻す
#     data modify storage rusk_util:exdata/ in set from storage rusk_util:exdata/core in_backup[-1]
#     data remove storage rusk_util:exdata/core in_backup[-1]