#> rusk_util:exdata/zz/merge/from
# カスタム個別ストレージにデータをマージする
# @within
#   function rusk_util:exdata/merge

## データをマージ
    $data modify storage rusk_util:exdata/data$(dot)$(custom_name) data[$(id)].$(path) merge from $(source_type) $(source) $(source_path)