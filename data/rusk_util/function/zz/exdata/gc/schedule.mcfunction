#> rusk_util:zz/exdata/gc/schedule
# スケジュールで一定時間のループし、処理idを整理する
# @within
#   function rusk_util:zz/exdata/gc/schedule_macro
#   function rusk_util:zz/load

## ストレージの分だけループして整理の実行
    # データを回しながら実行
    function rusk_util:zz/exdata/gc/gc

## スケジュールの実行
    # マクロ/情報のセット
    data modify storage rusk_util:exdata.core macro set value {gc_duration:12000}
    data modify storage rusk_util:exdata.core macro.gc_duration set from storage rusk_util:exdata gc_duration
    # スケジュールによる遅延ループ
    schedule clear rusk_util:zz/exdata/gc/schedule
    function rusk_util:zz/exdata/gc/run_schedule with storage rusk_util:exdata.core macro