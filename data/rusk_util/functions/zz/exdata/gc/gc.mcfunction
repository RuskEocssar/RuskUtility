#> rusk_util:zz/exdata/gc/gc
# ストレージ毎にデータ整理を実行
# @within
#   function rusk_util:zz/exdata/gc/**

## idをソート
    # リストの取得
    data modify storage rusk_util:list in.list set from storage rusk_util:exdata.core id.used
    # ソートの開始
    function rusk_util:list/sort

## 消せるidを消す
    # 最新idを取得する
    execute store result score rsuH.1 rsuS.exd.id run data get storage rusk_util:exdata.core id.newest
    # 要素を比較しながら消していく
    execute if data storage rusk_util:list out.list[0] run function rusk_util:zz/exdata/gc/clear
    # 処理後のidとリストを反映
    execute store result storage rusk_util:exdata.core id.newest int 1 run scoreboard players get rsuH.1 rsuS.exd.id
    data modify storage rusk_util:exdata.core id.used set from storage rusk_util:list out.list