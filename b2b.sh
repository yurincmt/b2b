#!/bin/bash

# 
# conversor de base númericas decimal, hexadecimal e binária
# 


usagemsg=\
"    b2b - 'base to base', ferramenta para conversão de bases binária,
           decimal e hexadecimal.

    b2b -b|-d|-h [NUM]

    -b  NUM na base binária
    -d  NUM na base decimal
    -h  NUM na base hexadecimal

    Como saída, retorna NUM e as demais conversões na seguinte ordem:
    bin  dec  hex

EXEMPLO:
    b2b -b 1010
    1010  10  A

    b2b -d 10
    1010  10  A

    b2b -h A
    1010  10  A"


tobin () {
    # convert $2 para binário
    bc <<< "obase=2;ibase=$1;$2"
}

todec () {
    # convert $2 para decimal
    bc <<< "obase=10;ibase=$1;$2"
}

tohex () {
    # convert $2 para hexadecimal
    bc <<< "obase=16;ibase=$1;$2"
}


b2b () {

    if test "$#" -eq 0 || test "$#" -gt 2
    then
        echo -e "$usagemsg"
        exit -1
    fi

    if test "$#" -eq 1
    then
        read num
        b2b $1 $num
        exit 0
    fi

    if test "$#" -eq 2
    then
        num="$2"
        case "$1" in
            -b)
                obin=$num
                odec=$(todec 2 $num)
                ohex=$(tohex 2 $num)
                ;;
            -d)
                odec=$num
                obin=$(tobin 10 $num)
                ohex=$(tohex 10 $num)
                ;;
            -h)
                num=${num^^}
                ohex=$num
                obin=$(tobin 16 $num)
                odec=$(todec 16 $num)
                ;;
            *)
                echo "$usagemsg"
                ;;
        esac

        echo "$obin  $odec  $ohex"
        exit
    fi
}

b2b "$@"