#!/bin/bash

## ----------------------------
# ユーザからのキーボードの入力を受け取り、
# yes と入力されたらスクリプトを実行する、no と入力されたらスクリプトを終了します.
## ----------------------------

function ConfirmExecution() {

  echo "---------------------------------------------------------"
  echo "|Press [x] for xonsh, [t] for tmux, [Enter] for terminal|"
  echo "---------------------------------------------------------"
  read input

  if [ -z $input ] ; then

    echo "terminal booted"
    exit
    

  elif [ $input = 'x' ] || [ $input = 'X' ] ; then

    xonsh

  elif [ $input = 't' ] || [ $input = 'T' ] ; then

    tmux

  else

    echo "error"
    ConfirmExecution

  fi

}

# シェルスクリプトの実行を継続するか確認します。
ConfirmExecution

#echo "----------------------------"
#echo "welcome back"





