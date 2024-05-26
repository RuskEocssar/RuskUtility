#> rusk_util:zz/bgm/play
# 音源の再生
# @within
#   function rusk_util:bgm/**

## 音楽を再生する
    $execute as @a at @s run playsound $(music) record @s $(position) $(volume) $(pitch) $(min_volume)

## ループ用スケジュールを作成する
    $schedule function rusk_util:bgm/loop $(loop_duration)t