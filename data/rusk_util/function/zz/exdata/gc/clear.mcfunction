#> rusk_util:zz/exdata/gc/clear
# 要素を比較しながら消していく
# @within
#   function rusk_util:zz/exdata/gc/**

## 要素を見て削除していく
    # 最大値を取得
    execute store result score rsuH.2 rsuS.exd.id run data get storage rusk_util:list out.list[-1]
    # 比較して消去
    execute if score rsuH.1 rsuS.exd.id <= rsuH.2 rsuS.exd.id run data remove storage rusk_util:list out.list[-1]
    execute if score rsuH.1 rsuS.exd.id <= rsuH.2 rsuS.exd.id run data remove storage rusk_util:exdata.data data[-1]
    # 最新idじゃなければ中断
    execute if score rsuH.1 rsuS.exd.id > rsuH.2 rsuS.exd.id run return 0

## 次の要素を削除
    # 1減らす
    execute if score rsuH.1 rsuS.exd.id = rsuH.2 rsuS.exd.id run scoreboard players remove rsuH.1 rsuS.exd.id 1
    # ループを実行
    execute if data storage rusk_util:list out.list[-1] run function rusk_util:zz/exdata/gc/clear