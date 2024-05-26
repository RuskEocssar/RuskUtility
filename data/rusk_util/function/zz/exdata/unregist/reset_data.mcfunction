#> rusk_util:zz/exdata/unregist/reset_data
# データのリセット
# @within
#   function rusk_util:exdata/unregist

## データをリセット
    $data modify storage rusk_util:exdata.data data[$(id)] set value {}

## idの処理
    # 廃棄済みじゃない場合はidを保管
    $execute unless data storage rusk_util:exdata.core id{used:[$(id)]} run data modify storage rusk_util:exdata.core id.used append value $(id)