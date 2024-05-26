#> rusk_util:zz/load
# ロード時
# @within
#   function tag/function minecraft:load

## 各種定義
    function rusk_util:zz/define

## exdata
    # ガベージコレクタのスケジュールを実行
    function rusk_util:zz/exdata/gc/schedule
    # ストレージの初期化
    execute unless data storage rusk_util:exdata gc_duration run data modify storage rusk_util:exdata gc_duration set value 12000
    execute unless data storage rusk_util:exdata.core id run data modify storage rusk_util:exdata.core id set value {used:[],newest:-1}
    execute unless data storage rusk_util:exdata.data data run data modify storage rusk_util:exdata.data data set value []