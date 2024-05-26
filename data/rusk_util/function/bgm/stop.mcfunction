#> rusk_util:bgm/stop
# ストレージに指定された音源をループ再生する
# @public
# input -> none

## 進行中の音源再生を削除
    schedule clear rusk_util:bgm/loop
    function rusk_util:zz/bgm/stop with storage rusk_util:bgm.core in