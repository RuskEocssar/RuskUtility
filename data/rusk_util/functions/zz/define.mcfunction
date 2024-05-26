#> rusk_util:zz/define
# スコアボードやストレージ等の定義
# *VSCodeの拡張機能"Data-pack Helper Plus"を使用する上での定義
# @within
#   function rusk_util:zz/load

## exdata
    #> Local
    # @within
    #   function rusk_util:exdata/**
    #   function rusk_util:zz/exdata/**
        scoreboard objectives add rsuS.exd.id dummy
        #define score_holder #dpuH.
        #define score_holder #dpuH.1
        #define score_holder #dpuH.2
        #define storage rusk_util:exdata
        #define storage rusk_util:exdata.core
        #define storage rusk_util:exdata.data