#> rusk_util:exdata/zz/error
# エラー排出用ファンクション
# @within
#   function rusk_util:exdata/**
# in :
#   error -> エラー番号

## エラー番号別にエラーを出す
    # 番号をセット(なんとなく負にしたい)
    $scoreboard players set estH.error estS.id -$(error)
    # 番号別の実行
        # 入力関連
        execute if score estH.error estS.id matches -1 run tellraw @s {"translate":"<exdata> Error : %s","color":"red","with":[{"text":"入力に\"custom_name\"が不足しています"}]}
        execute if score estH.error estS.id matches -2 run tellraw @s {"translate":"<exdata> Error : %s","color":"red","with":[{"text":"入力に\"custom_name\"が不足、または\"custom_name\":\"\"が指定されています"}]}

## 番号を返す
    return run scoreboard players get estH.error estS.id