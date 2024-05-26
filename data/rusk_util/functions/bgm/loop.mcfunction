#> rusk_util:bgm/loop
# ストレージに指定された音源をループ再生する
# @public
# input ->
#   music (string)
#   position (3 double)
#   volume (float)
#   pitch (float)
#   min_volume (float)
#   loop_duration (int) : tick

## 進行中の音源再生を削除
    schedule clear rusk_util:bgm/loop
    function rusk_util:zz/bgm/stop with storage rusk_util:bgm.core in

## 新しい音源を再生開始
    data modify storage rusk_util:bgm.core in set value {music:"",position:"~ ~ ~",volume:1,pitch:1.0,min_volume:0,loop_duration:3600}
    data modify storage rusk_util:bgm.core in merge from storage rusk_util:bgm in
    function rusk_util:zz/bgm/play with storage rusk_util:bgm.core in