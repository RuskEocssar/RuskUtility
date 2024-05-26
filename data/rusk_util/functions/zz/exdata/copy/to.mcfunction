#> rusk_util:exdata/zz/copy/to
# カスタム個別ストレージにデータをマージする
# @within
#   function rusk_util:exdata/merge

## データを指定先にコピー
    $data modify $(target_type) $(target) $(target_path) set from storage rusk_util:exdata/data$(dot)$(custom_name) data[$(id)].$(path)