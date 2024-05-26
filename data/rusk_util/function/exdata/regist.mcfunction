#> rusk_util:exdata/regist
# 実行者エンティティを個別ストレージに登録
# @public
# in: none
# out : none

## 例外処理
    # 既に登録されている場合は実行しない
    execute if score @s rusS.exd.id matches 0.. run return fail

## idをセット
    # 廃棄済みidがない場合
        # idを加算
        execute if data storage rusk_util:exdata.core id{used:[]} store result score @s rusS.exd.id run data get storage rusk_util:exdata.core id.newest
        execute if data storage rusk_util:exdata.core id{used:[]} store result storage rusk_util:exdata.core id.newest int 1 run scoreboard players add @s rusS.exd.id 1
        # リストにデータを追加
        execute if data storage rusk_util:exdata.core id{used:[]} run data modify storage rusk_util:exdata.data data append value {}
    # 廃棄済みidがある場合
        # idを取得
        execute unless data storage rusk_util:exdata.core id{used:[]} store result score @s rusS.exd.id run data get storage rusk_util:exdata.core id.used[0]
        execute unless data storage rusk_util:exdata.core id{used:[]} run data remove storage rusk_util:exdata.core id.used[0]

## 初期データを設定
    # データを準備
    data modify storage rusk_util:exdata in.data set value {name:""}
    # データをマージ
    function rusk_util:exdata/merge/value