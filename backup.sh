#!/bin/bash
rm -r ./tmp
mkdir ./tmp
export TMPCONFDIR="./tmp"
export CONFIGDIR="$HOME/.config/"
export ETCDIR="/etc/"
export CURSHELL="$(echo "$SHELL" | sed "s/\/usr\/bin\///")"
echo $TMPCONFDIR
echo "$CONFIGDIR"

function chooseShell() {
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
        return 1
        ;;

    2)
        echo "Grabbing configuration files for zsh..."
        return 2
        ;;

    3)
        echo "Grabbing configuration files for sh"
        return 3
        ;;

    "$NULL")
        echo "Grabbing configuration files for $CURSHELL"
        return "$NULL"
        ;;

    *)
        echo "Please try again:"
        chooseShell
        ;;
    esac
}

chooseShell
if [ "$answer" == 1 ]; then
    echo "GH"
# do stuff for the bash shell
elif [ "$answer" == 2 ]; then
    # do stuff for the zsh shell
    echo "Copying configuration files to temporary directory..."
    
elif [ "$answer" == 3 ]; then
    echo ""
# do stuff for the sh shell
else
    [ "$answer" == "$NULL" ]

# do stuff for the current detected shell
fi
