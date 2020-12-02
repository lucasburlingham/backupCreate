#!/bin/bash
rm -r ./tmp
mkdir ./tmp
export TMPCONFDIR="./tmp"
export CONFIGDIR="$HOME/.config/"
export ETCDIR="/etc/"
export CURSHELL="$(echo $SHELL | sed "s/\/usr\/bin\///")"
echo $TMPCONFDIR
echo $CONFIGDIR

echo "Select your shell:"
echo ""
echo "[1]: bash"
echo "[2]: zsh"
echo "[3]: sh"
echo -n "Your selection: [$CURSHELL] "
read answer

case $answer in

1)
    echo "Grabbing configuration files for bash..."
    ;;

2)
    echo "Grabbing configuration files for zsh..."
    ;;

3)
    echo "Grabbing configuration files for sh"
    ;;

*)
    echo "Grabbing configuration files for $CURSHELL"
    ;;
esac
