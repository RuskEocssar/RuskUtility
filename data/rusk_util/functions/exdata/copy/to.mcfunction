#> rusk_util:exdata/copy/to
# データをコピーする
# @public
# in:
#   storage_name -> コピーを行うストレージ名
#   path -> コピー元のパス
#   target_type -> コピー先の種類 block, entity, storage
#   target_target -> コピー先の指定 block : 座標, entity : 名前またはセレクタ, storage : 名前空間 
#   target_path -> コピー先のパス

# ## 入力値のバックアップ
#     data modify storage rusk_util:exdata/core in_backup append from storage rusk_util:exdata/ in

## データのコピー
    # マクロ/情報の準備
    data modify storage rusk_util:exdata/core macro set value {custom_name:"",path:"",target_type:"storage",target:"",target_path:"",dot:"",id:-1}
    data modify storage rusk_util:exdata/core macro merge from storage rusk_util:exdata/ in
    # idの取得
        # custom_nameが指定されていない時
        execute if data storage rusk_util:exdata/core macro{custom_name:""} store result storage rusk_util:exdata/core macro.id int 1 run scoreboard players operation estH. estS.id = @s estS.id
        # custom_nameが指定されている時
        execute unless data storage rusk_util:exdata/core macro{custom_name:""} run data modify storage rusk_util:exdata/core macro.dot set value "."
        execute unless data storage rusk_util:exdata/core macro{custom_name:""} store result storage rusk_util:exdata/core macro.id int 1 run function rusk_util:exdata/zz/get_custom_id with storage rusk_util:exdata/core macro
    # マクロによるコピーの実行
    function rusk_util:exdata/zz/copy/to with storage rusk_util:exdata/core macro

# ## 入力を戻す
#     data modify storage rusk_util:exdata/ in set from storage rusk_util:exdata/core in_backup[-1]
#     data remove storage rusk_util:exdata/core in_backup[-1]