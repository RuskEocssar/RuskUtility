#> rusk_util:list/sort
# マージソートを用いて数値リストをソートする
# @public
# in :
#   list -> ソートするリスト
# out :
#   list -> ソートされたリスト

## リストのソートを行う
    # リストのサイズを取得
    execute store result score rsuH. rsuS. run data get storage rusk_util:list in.list
    # サイズが1の場合は終了
    execute if score rsuH. rsuS. matches ..1 run return run data modify storage rusk_util:list out.list set from storage rusk_util:list in.list
    # 計算用リストを準備
    data modify storage rusk_util:list.core list_0 set from storage rusk_util:list in.list
    data modify storage rusk_util:list.core list_1 set value []
    # リストを2つずつに分割
        # 分割
        function rusk_util:zz/list/sort/separate/main
        # 残ってる要素があれば追加
        execute if data storage rusk_util:list.core list_0[0] run data modify storage rusk_util:list.core list_1 append value []
        execute if data storage rusk_util:list.core list_0[0] run data modify storage rusk_util:list.core list_1[-1] append from storage rusk_util:list.core list_0[0]
    # サイズが2の場合は終了
    execute if score rsuH. rsuS. matches 2 run return run data modify storage rusk_util:list out.list set from storage rusk_util:list.core list_1[0]
    # リストをマージソートしていく
    function rusk_util:zz/list/sort/merge/main
    # 出力
    data modify storage rusk_util:list out.list set from storage rusk_util:list.core list_2[0]