#> rusk_util:exdata/zz/load
# ロード時
# @within
#   function tag/function minecraft:load

## 各種定義
    function rusk_util:exdata/zz/define

## ガベージコレクタのスケジュールを実行
    function rusk_util:exdata/zz/gc/schedule

## ストレージの初期化
    execute unless data storage rusk_util:exdata/ gc_duration run data modify storage rusk_util:exdata/ gc_duration set value 12000
    execute unless data storage rusk_util:exdata/core storages run data modify storage rusk_util:exdata/core storages set value [{name:"",id:{used:[],newest:-1}}]
    execute unless data storage rusk_util:exdata/data data run data modify storage rusk_util:exdata/data data set value []