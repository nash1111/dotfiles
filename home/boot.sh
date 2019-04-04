#!/bin/bash

## ----------------------------
# choose xonsh or tmux or terminal by [t],[x],[Enter]
## ----------------------------

function boot() {

#  echo "---------------------------------------------------------"
#  echo "|Press [x] for xonsh, [t] for tmux, [Enter] for terminal|"
#echo "---------------------------------------------------------"
  cowsay -f daemon Press [x] for xonsh, [t] for tmux, [Enter] for terminal
  read -n1 input

  if [ -z $input ] ; then

    echo "terminal booted"
    exit
    

  elif [ $input = 'x' ] || [ $input = 'X' ] ; then
    
    xonsh

  elif [ $input = 't' ] || [ $input = 'T' ] ; then

    tmux

  else

    echo "error"
    boot 

  fi

}

# シェルスクリプトの実行を継続するか確認します。
boot
#echo "----------------------------"
#echo "welcome back"
#echo "---------------------------"




