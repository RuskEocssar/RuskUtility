#>  rusk_util:zz/exdata/merge/value
# カスタム個別ストレージにデータをマージする
# @within
#   function rusk_util:exdata/merge/value

## データをマージ
    $data modify storage rusk_util:exdata.data data[$(id)].$(path) merge value $(data)